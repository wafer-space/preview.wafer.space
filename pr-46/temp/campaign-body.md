## Silicon Manufacturing Made Simple

Thanks to open PDKs, advancing open‑source EDA, and programs like TinyTapeout, it’s never been easier to design a chip. With wafer.space, you can easily turn a design into real, working chips. We provide pooled fabrication with clear specs, an automated submission system, and a shipment of real silicon you can hold, probe, and ship to other people.

In this first production run, known as GF180MCU Run 1, we are working with [GlobalFoundries' 180 nm mixed-signal process](https://gf180mcu-pdk.readthedocs.io/) to deliver dies in March 2026. 

~~~
image:
  name: gf180mcu-wafer-edge-1
~~~

## Remember PCBs before OSH Park?

Orders were painful: opaque quotes, setup fees, big MOQs, long waits, and DIY panelization. Then pooling services like OSH Park fixed it with predictable pricing, frequent runs, and no‑nonsense logistics. **wafer.space brings that shift to silicon.**

## Features & Specifications

Through this campaign, you can purchase one or more slots in wafer.space's first production run at GlobalFoundries. Each slot consists of a 3.88 mm × 5.07 mm (19.67 mm²) fixed die area, replicated 1,000 times. You can choose to receive bare dies (in Gel-Paks) or chip-on-board dies (i.e., dies wire-bonded to small PCBs). For those needing to perform on-wafer probing, or who want a unique memento, full wafers are also available. (A full wafer will include other designs from this run in addition to your design.)

#### Foundry & Node

* GlobalFoundries [GF180MCU open‑source PDK](https://gf180mcu-pdk.readthedocs.io/)
* Mature, mainstream 180 nm mixed‑signal process

#### Device & Passives

* Metals: 5 layers
* MIM capacitor: Type‑B (\~2.0 fF/µm²)
* Resistors: poly and high‑res poly (HRES)
* MOS options: standard‑Vt core devices and I/O devices per PDK

#### Design Envelope

* Area: 19.67 mm² (3.88 mm × 5.07 mm)
* Top metal: available for pads, inductors, shielding, etc.
* I/O: bring your own pad ring and ESD; choose your pad pitch/Count per your package plan

#### Packaging

* Default: bare dies
* Optional: chip-on-board
* There are no QFN or other packing options available at this time
* Full wafers available

#### Included

* Silicon fabrication
* Dicing
* Chip-on-board packaging (optional)
* Shipment of finished dies or COBs

#### Not Included

* Design support
* Packaging (other than chip-on-board option)
* Test services
* IP blocks

~~~
image-gallery:
  images:
  - name: gf180mcu-gelpack-dice
  - name: wafer-space-chip-on-board
  caption: Chips can be delivered either as bare dies in a Gel-Pak, or chip-on-board.
~~~

## How It Works

1. Reserve a slot during the campaign.
2. Design & verify using the open GF180MCU PDK and your preferred flow (e.g., LibreLane/OpenROAD, proprietary, or mixed).
3. Run sign‑off (DRC/LVS/ERC/antenna) and follow pad/ESD guidelines.
4. Submit tape‑in bundle by **3rd December 2025**.
5. Fabrication in the pooled MPW.
6. Dicing & logistics.
7. Delivery of your bare dies (and packaged parts if selected).

## Schedule

| Date                 | Milestone         |
|----------------------|-------------------|
| 28th November 2025        | Final slot purchase date / crowdFunding campaign closes. |
| 3rd December 2025 ~danger | Final GDS in date. Your design needs to be submitted to wafer.space by now! ~danger |
| 5th December 2025         | GDS delivered to GlobalFoundries. |
| End of February 2026      | Wafers returned from GlobalFoundries. |
| Early March 2026          | Wafers diced and sorted. |
| 15 March 2026 ~success    | Dies shipped to customers. ~success |

~~~
image:
  name: gf180mcu-wafer-isometric
~~~

## FAQ

#### Do I have to open‑source my design?

No. The PDK is open; your design can be open or closed.

#### Can you help me with a pad ring?

No, but the community has created example pad‑rings and reviews of common pitfalls.

#### How many I/O pads can I use?

Depends on your pad pitch and die edge budget. Many designs fit 40–120 bonds comfortably in our 3.88 mm × 5.07 mm footprint.

#### Can I put multiple test chips or multiple macros in one slot?

Yes. You own the full 19.67 mm².

#### Where will my chips be made?

Fabricated on GF180MCU; logistics and dicing via qualified partners. Final shipping from Singapore or our fulfillment partner.
