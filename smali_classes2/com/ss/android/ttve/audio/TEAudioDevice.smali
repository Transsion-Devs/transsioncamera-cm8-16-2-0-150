.class public Lcom/ss/android/ttve/audio/TEAudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEAudioDevice"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuiltinInputDevice()Landroid/media/AudioDeviceInfo;
    .registers 6

    .line 37
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_27

    aget-object v2, p0, v1

    .line 39
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_24

    return-object v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutputAudioDeviceType()Lcom/ss/android/ttve/model/VEAudioDeviceType;
    .registers 10

    .line 18
    invoke-static {}, Lcom/ss/android/ttve/model/VEAudioDeviceType;->values()[Lcom/ss/android/ttve/model/VEAudioDeviceType;

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [Z

    .line 19
    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 20
    sget-object v1, Lcom/ss/android/ttve/model/VEAudioDeviceType;->WIRED:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 21
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/runtime/VERuntime;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x2

    .line 22
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_55

    aget-object v5, v2, v4

    .line 23
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    const/4 v8, 0x1

    if-eq v6, v7, :cond_50

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3f

    goto :goto_50

    .line 25
    :cond_3f
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4d

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_52

    .line 26
    :cond_4d
    aput-boolean v8, p0, v1

    goto :goto_52

    .line 24
    :cond_50
    :goto_50
    aput-boolean v8, p0, v0

    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 30
    :cond_55
    aget-boolean v1, p0, v1

    if-eqz v1, :cond_5c

    sget-object p0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->WIRED:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object p0

    .line 31
    :cond_5c
    aget-boolean p0, p0, v0

    if-eqz p0, :cond_63

    sget-object p0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->BLUETOOTH:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object p0

    .line 33
    :cond_63
    sget-object p0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object p0
.end method
