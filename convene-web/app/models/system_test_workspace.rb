class SystemTestWorkspace
  # Creates the system test workspace, but only on environments which are
  # configured to include the system test workspace.
  def self.prepare
    return unless Feature.enabled?(:system_test)

    Factory.new(Client).find_or_create_workspace!
  end

  class Factory
    attr_accessor :client_repository
    # Expand this to include more room types for different test cases
    DEMO_ROOMS = [
      {
        name: "Listed Room 1",
        publicity_level: :listed,
      },
      {
        name: "Listed Room 2",
        publicity_level: :listed,
      },
      {
        name: "Listed Locked Room 1",
        publicity_level: :listed,
        access_level: :locked,
        access_code: :secret,
      },
      {
        name: "Unlisted Room 1",
        publicity_level: :unlisted,
      },
      {
        name: "Unlisted Room 2",
        publicity_level: :unlisted,
      },
    ].freeze

    # @param [ActiveRecord::Relation<Client>] client_repository Where to ensure there
    #  is a Zinc Client with the Convene Demo workspace
    def initialize(client_repository)
      self.client_repository = client_repository
    end

    def find_or_create_workspace!
      workspace = client.workspaces.find_or_create_by!(name: 'System Test Branded Domain')
      workspace.update!(jitsi_meet_domain: 'convene-videobridge-zinc.zinc.coop',
                        branded_domain: 'system-test.zinc.local',
                        access_level: :unlocked)
      add_demo_rooms(workspace)

      workspace = client.workspaces.find_or_create_by!(name: 'System Test')
      workspace.update!(jitsi_meet_domain: 'convene-videobridge-zinc.zinc.coop',
                        branded_domain: nil,
                        access_level: :unlocked)
      add_demo_rooms(workspace)
    end

    private def add_demo_rooms(workspace)
      DEMO_ROOMS.each do |room_properties|
        room = workspace.rooms.find_or_initialize_by(name: room_properties[:name])
        room.update!(room_properties.except(:name))
      end
      workspace
    end

    private def client
      @_client ||= client_repository.find_or_create_by!(name: 'Zinc')
    end
  end
end
