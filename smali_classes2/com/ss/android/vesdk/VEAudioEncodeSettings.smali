.class public Lcom/ss/android/vesdk/VEAudioEncodeSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;,
        Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_SCENE;,
        Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEAudioEncodeSettings;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT:Lcom/ss/android/vesdk/VEAudioEncodeSettings;


# instance fields
.field private mBps:I

.field private mChannelCount:I

.field private mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

.field private mHwEnc:Z

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->DEFAULT:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 164
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 93
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    const v0, 0x1f400

    .line 94
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 119
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    const/high16 v0, 0x20000

    .line 126
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    const/4 v0, 0x2

    .line 133
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    .line 143
    const-class v1, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_39

    const/4 v0, 0x1

    :cond_39
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    return-void
.end method

.method private constructor <init>(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    .line 119
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    const/high16 v0, 0x20000

    .line 126
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    const/4 v0, 0x2

    .line 133
    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    .line 105
    # getter for: Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->access$000(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    .line 106
    # getter for: Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mSampleRate:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->access$100(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    .line 107
    # getter for: Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mBps:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->access$200(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    .line 108
    # getter for: Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mChannelCount:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->access$300(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    .line 109
    # getter for: Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->mHwEnc:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->access$400(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;Lcom/ss/android/vesdk/VEAudioEncodeSettings$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;-><init>(Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBps()I
    .registers 1

    .line 225
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    return p0
.end method

.method public getChannelCount()I
    .registers 1

    .line 246
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    return p0
.end method

.method public getCodec()Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-object p0
.end method

.method public getSampleRate()I
    .registers 1

    .line 204
    iget p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    return p0
.end method

.method public isHwEnc()Z
    .registers 1

    .line 267
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    return p0
.end method

.method public setBps(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    return-void
.end method

.method public setChannelCount(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    return-void
.end method

.method public setCodec(Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    return-void
.end method

.method public setHwEnc(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    return-void
.end method

.method public setSampleRate(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    iput p1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v1, "\"mCodec\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ",\"mSampleRate\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ",\"mBps\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ",\"mChannelCount\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ",\"mHwEnc\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mCodec:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget p2, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mBps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mChannelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->mHwEnc:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
