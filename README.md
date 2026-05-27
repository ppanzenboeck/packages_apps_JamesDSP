## JamesDSP

Integrate JamesDSP in your device trees:

  Add the config to your device common trees to **`device.mk`** or **`common.mk`**:

    # JamesDSP
    $(call inherit-product-if-exists, packages/apps/JamesDSP/config.mk)

  insert jamesdsp's <library> and <effect> entries in your device specific **`audio_effects_config.xml`**:

    diff --git a/configs/audio/audio_effects_config.xml b/configs/audio/audio_effects_config.xml
    index f45bb3d..78339f1 100644
    --- a/configs/audio/audio_effects_config.xml
    +++ b/configs/audio/audio_effects_config.xml
    @@ -7,6 +7,7 @@ SPDX-License-Identifier: BSD-3-Clause-Clear

     <libraries>
    +    <library name="jdsp" path="libjamesdspaidl.so"/>
         <library name="bundle" path="libbundleaidl.so"/>
         <library name="reverb" path="libreverbaidl.so"/>
         <library name="downmix" path="libdownmixaidl.so"/>
    @@ -22,6 +23,7 @@ SPDX-License-Identifier: BSD-3-Clause-Clear

     <effects>
    +    <effect name="jamesdsp" library="jdsp" uuid="f27317f4-c984-4de6-9a90-545759495bf2" type="f98765f4-c321-5de6-9a45-123459495ab2"/>
         <effectProxy name="bassboost" uuid="14804144-a5ee-4d24-aa88-0002a5d5c51b">
         <libsw library="bundle" uuid="8631f300-72e2-11df-b57e-0002a5d5c51b"/>
         <libhw library="offload_bundle" uuid="2c4a8c24-1581-487f-94f6-0002a5d5c51b"/>
