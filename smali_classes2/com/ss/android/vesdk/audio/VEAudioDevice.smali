.class public Lcom/ss/android/vesdk/audio/VEAudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private type:Lcom/ss/android/ttve/model/VEAudioDeviceType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    iput-object v0, p0, Lcom/ss/android/vesdk/audio/VEAudioDevice;->type:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttve/model/VEAudioDeviceType;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/ss/android/ttve/model/VEAudioDeviceType;->DEFAULT:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    .line 21
    iput-object p1, p0, Lcom/ss/android/vesdk/audio/VEAudioDevice;->type:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/ss/android/ttve/model/VEAudioDeviceType;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/android/vesdk/audio/VEAudioDevice;->type:Lcom/ss/android/ttve/model/VEAudioDeviceType;

    return-object p0
.end method
