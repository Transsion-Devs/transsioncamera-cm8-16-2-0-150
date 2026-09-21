.class public final Lcom/ss/android/vesdk/VEReactSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mReactAudioPath:Ljava/lang/String;

.field private mReactInitalReagion:[F

.field private mReactPosMarginPercent:[F

.field private mReactVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[F)V
    .registers 5

    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEReactSettings;-><init>(Ljava/lang/String;Ljava/lang/String;[F[F)V

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[F[F)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactVideoPath:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactAudioPath:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactPosMarginPercent:[F

    .line 42
    iput-object p4, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactInitalReagion:[F

    return-void
.end method


# virtual methods
.method public getReactAudioPath()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getReactVideoPath()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getReactionInitalRegion()[F
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactInitalReagion:[F

    return-object p0
.end method

.method public getReactionPosMargin()[F
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/ss/android/vesdk/VEReactSettings;->mReactPosMarginPercent:[F

    return-object p0
.end method
