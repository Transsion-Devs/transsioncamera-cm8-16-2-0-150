.class public Lcom/bef/byteeffect/EffectSDKBuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ENABLE_AUDIO_EFFECT:I

.field private static ENABLE_BORINGSSL:I

.field private static ENABLE_BYTEBENCH:I

.field private static ENABLE_FFMPEG:I

.field private static ENABLE_IES_APPLOGGER:I

.field private static ENABLE_JAZZ:I

.field private static ENABLE_LENS:I

.field private static ENABLE_SPEECH_ASR:I

.field private static ENABLE_SPEECH_CAPT:I

.field private static ENABLE_VC0:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEffectLibs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const-string v1, "c++_shared"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_BYTEBENCH:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 23
    const-string v1, "bytebench"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_14
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_BORINGSSL:I

    if-eq v1, v2, :cond_1c

    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_FFMPEG:I

    if-ne v1, v2, :cond_26

    .line 26
    :cond_1c
    const-string v1, "ttcrypto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v1, "ttboringssl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_26
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_FFMPEG:I

    if-ne v1, v2, :cond_2f

    .line 30
    const-string v1, "ttffmpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_2f
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_IES_APPLOGGER:I

    if-ne v1, v2, :cond_38

    .line 33
    const-string v1, "iesapplogger"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_38
    const-string v1, "bytenn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_AUDIO_EFFECT:I

    if-ne v1, v2, :cond_46

    .line 37
    const-string v1, "audioeffect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_46
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_SPEECH_CAPT:I

    if-eq v1, v2, :cond_4e

    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_SPEECH_ASR:I

    if-ne v1, v2, :cond_53

    .line 40
    :cond_4e
    const-string v1, "speechsdk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_53
    const-string v1, "gaia_lib"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "AGFX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_LENS:I

    if-ne v1, v2, :cond_66

    .line 45
    const-string v1, "lens"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_66
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_JAZZ:I

    if-ne v1, v2, :cond_6f

    .line 48
    const-string v1, "jazz"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_6f
    sget v1, Lcom/bef/byteeffect/EffectSDKBuildConfig;->ENABLE_VC0:I

    if-ne v1, v2, :cond_78

    .line 51
    const-string v1, "bytevc0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_78
    const-string v1, "effect"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
