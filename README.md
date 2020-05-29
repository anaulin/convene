# Convene

Community-owned tools to bring people together, online and off.

## Purpose

Many public domain, open-source, and free software products leverage the [Open
Core model] to be socioeconomically sustainable. The Open Core model allows
producers and maintainers to capture a portion of the wealth generated by their
efforts; but requires people or organizations to maintain their own
infrastructure tooling or pay privately held companies to host the services they
use.

As a result, much of the software tools to safely, securely, efficiently,
reliably and self-sufficiently host public-domain services is unavailable to the
public.

Convene provides software tools to reliably, safely, and securely provision,
deploy, host and scale public-domain software services for personal, communal,
or organizational use.

[open core model]: (https://en.wikipedia.org/wiki/Open-core_model)

## Using Convene

Convene is [pre-alpha software], so while we intend to provide interfaces that
do not require a high degree of technical skill to operate, our current phase
expects operators to be comfortable with infrastructure management techniques
and tooling such as [Ansible], [Hashicorp's product line][hashicorp-products],
or similar.

[ansible]: https://www.ansible.com/
[hashicorp-products]: https://learn.hashicorp.com/
[pre-alpha software]:
  https://en.wikipedia.org/wiki/Software_release_life_cycle#Pre-alpha

### Purchasing Convene

Convene is licensed under the [Prosperity Public License]. This provides
generous usage rights to individuals and non-commercial organizations to use
Convene however they see fit.

If your organization engages in commerce, defined as taking currency in exchange
for goods or services, then the organization must purchase a license to use
Convene.

Pricing is determined on a case-by-case basis, with an emphasis on mutually
beneficial socioeconomic transactions.

### Help and Support

Organizations and individuals who are comfortable relying on free Community
Support are encouraged to [create issues in our public issue
tracker][issue-tracker]. A maintainer will respond as they are available.

Paid support is available for \$135 USD per hour<sup>[1][footnote-1]</sup>.

[prosperity public license]: https://prosperitylicense.com/
[issue-tracker]: https://github.com/zinc-collective/convene/issues

## Architecture

At present, Convene is split into three modules:

- `infrastructure`, which contains infrastructure management code for Packer,
  Terraform and Ansible.
- `web` which provides the human interface for Convene.
- `api` which stores data long-term and provides a programmatic interface.

## Design

We have a set of [Personas](https://drive.google.com/open?id=1JwTh2uFTc6pxsXu3njEVKQrv-J5HWExhd1rgT-ravt4) that we use to guide our design and development. Designers who have agreed to protect the privacy of our clients may access our [Customer Research Interviews](https://drive.google.com/drive/u/2/folders/1gncYSkVIAj4CnlUZM9KPQlFdj_aqulDl)

## Footnotes

### Paid Support

Our paid support rate is pegged to 3x [the San Francisco Living Wage for a
couple with a single worker raising three children][san-francisco-living-wage].

This rate is negotiable for organizations that offer Zinc a [patronage
account][what-is-patronage] or corresponding equity stake.

Paid support clients may also request a deferred payment program, with terms to
be determined on a case-by-case basis.

[footnote-1]: #paid-support
[san-francisco-living-wage]: https://livingwage.mit.edu/metros/41860
[what-is-patronage]:
  https://www.co-oplaw.org/finances-tax/patronage/#How_Patronage_Works
