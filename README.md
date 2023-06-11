# Advanced Settlement Power (Redux)

#### Note: This is a rework that is still taking place.

Advanced Settlement Power is a mod that expands the power options for settlements in Fallout 4. This mod requires a build process before installation. This document describes the building, installation, and usage of the Advanced Settlement Power mod.

## Building the Mod

Before you install the mod in Fallout 4, you need to build it. The mod contains Papyrus scripts that need to be compiled into a form that Fallout 4 can use. To do this, you'll need to use the Papyrus Compiler that comes with the Fallout 4 Creation Kit.

Follow these steps:

1. **Locate the scripts:** The scripts you need to compile are located in `/path/to/your/Advanced_Settlement_Power/scripts`.

2. **Compile the scripts:** Use the Papyrus Compiler to compile the scripts. The command to compile a script is:

```
/path/to/PapyrusCompiler.exe /path/to/script.psc -f="/path/to/Fallout4_Papyrus_Flags.flg" -i="/path/to/your/Advanced_Settlement_Power/scripts" -o="/path/to/your/Advanced_Settlement_Power/scripts/output"
```

Replace `/path/to` with the actual paths on your system. Repeat this for each script in the `scripts` directory.

    TODO: Implement a Build System, which automates this.

3. **Pack the mod:** Once all scripts are compiled, you need to pack them into a mod file that Fallout 4 can use. This includes the compiled scripts and any other resources the mod uses (like textures, meshes, etc.). This is typically done using the Creation Kit's Archive tool. The mod file should be named `Advanced_Settlement_Power_Redux.esp`.

## Installing the Mod

To install the mod, follow these steps:

1. **Locate the mod file:** Find the `Advanced_Settlement_Power_Redux.esp` file on your local machine.

2. **Install using Vortex:** 

    - Open Vortex and select Fallout 4 as the game you're managing. 
    - Click on the "Mods" section in the left sidebar.
    - At the top of the Mods section, click on the "Install From File" button.
    - In the file dialog, navigate to where you have the `Advanced_Settlement_Power_Redux.esp` file and select it.
    - Vortex will automatically install the mod. Once installed, the mod should appear in your mods list.

3. **Enable the mod:** Find the mod in the list, click the "Disabled" button to enable it. 

4. **Deploy the mod:** After enabling the mod, click the "Deploy Mods" button at the top of the Mods section. 

At this point, the mod should be installed and ready to use in Fallout 4. Check the new settlement power options this mod provides to make sure the mod is functioning correctly. 

## Items Added
* Logic gates (AND, OR, NAND, NOR, XOR, XNOR)
* Multibit logic gates
* Latches & Flip-Flops (SR, JK, D, T)
* Relays (NO, NC, Delay-on-break, Delay-on-make)
* RAM modules
* Multiplexers, Demultiplexers, Decoders
* Adders, Subtractors, and Comparators
* Multibit splitters and combiners

**note:** some items have been written but have not been added to the build menu yet

## Detailed Mod Information

### DataWire

DataWire is a standalone library developed for this mod to handle "multibit" wires. In computing terms, a "bit" is a basic unit of information, binary in nature, meaning it has two possible states - 0 or 1. "Multibit" means multiple bits are used together to hold more complex information. 

With DataWire, we're able to process 32-bit values between components in our system. This not only allows for a more intricate level of data processing and exchange within your settlements but also simplifies the construction of advanced circuitry.

For example, say you need to perform an AND operation on two 4-bit values in a circuit. Without multibit capability, you'd need to use four separate AND gates in parallel. With the multibit AND gate available through DataWire, this operation is simplified down to a single component. This means fewer components, fewer wires, and less chance for error.

### User Components

The Advanced Settlement Power mod provides a set of predefined components like logic gates and RAM modules. But what if you need a component that isn't included in the mod? No worries, you can create your own!

The mod allows you to define custom components using Papyrus scripts. These scripts extend the `ASPr:Component` class and can define inputs, outputs, and behavior for the custom component. This gives you a lot of flexibility in designing your settlement's power system.

For instance, in the example provided in the README, a simple component is created that shows a "derp" message whenever a high signal is received on its input.

### Component API

The Component API allows you to manipulate the behavior of the components in the power system. You can create inputs, outputs, contacts, transmitters, and receivers on any side of a component and define when they trigger an action, and what that action is.

The API allows for granular control of how your components behave. From simple high-low transitions to more complex behavior like sending data whenever a receiver receives it. This enables you to create intricate power systems with sophisticated control and feedback mechanisms.

Remember, the power system you create with the Advanced Settlement Power mod is only limited by your imagination. The tools provided by the mod, like DataWire, User Components, and the Component API, are there to help you build complex, robust, and interactive power systems for your settlements. Happy building!


###### Some of this text was generated by GPT4
