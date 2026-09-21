.class public Lcom/ss/android/vesdk/VEDisplaySettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEDisplaySettings$Builder;,
        Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;,
        Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VEDisplaySettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBgColor:J

.field private mCamOutSize:Lcom/ss/android/vesdk/VESize;

.field private mCanvasSize:Lcom/ss/android/vesdk/VESize;

.field private mDisplayRatio:F

.field private mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

.field private mDisplayRotation:I

.field private mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

.field private mEffectIntensity:F

.field private mEffectRotation:I

.field private mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

.field private mForceAdaptSurfaceSize:Z

.field private mLayoutSize:Lcom/ss/android/vesdk/VESize;

.field private mRenderSize:Lcom/ss/android/vesdk/VESize;

.field private mRotation:I

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 529
    new-instance v0, Lcom/ss/android/vesdk/VEDisplaySettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEDisplaySettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEDisplaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    .line 40
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    .line 45
    sget-object v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 50
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    .line 57
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    .line 62
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 82
    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 87
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    .line 92
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    .line 97
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    .line 99
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    .line 189
    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;->NONE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    .line 40
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    .line 45
    sget-object v1, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->SCALE_MODE_CENTER_INSIDE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 50
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    .line 57
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    .line 62
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    .line 82
    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 87
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    .line 92
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    .line 97
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    .line 99
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    .line 189
    sget-object v0, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;->NONE:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4a

    move-object v0, v1

    goto :goto_50

    .line 519
    :cond_4a
    invoke-static {}, Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;->values()[Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    move-result-object v3

    aget-object v0, v3, v0

    :goto_50
    iput-object v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_78

    goto :goto_7e

    .line 526
    :cond_78
    invoke-static {}, Lcom/ss/android/vesdk/VEPreviewRadio;->values()[Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v0

    aget-object v1, v0, p1

    :goto_7e
    iput-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VEDisplaySettings$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEDisplaySettings;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VEDisplaySettings;F)F
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;)Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/ss/android/vesdk/VEDisplaySettings;I)I
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    return p1
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VEDisplaySettings;I)I
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    return p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VEDisplaySettings;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEDisplaySettings;I)I
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    return p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEDisplaySettings;I)I
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    return p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEDisplaySettings;I)I
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    return p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEDisplaySettings;J)J
    .registers 3

    .line 11
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VEDisplaySettings;F)F
    .registers 2

    .line 11
    iput p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    return p1
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VEPreviewRadio;)Lcom/ss/android/vesdk/VEPreviewRadio;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    return-object p1
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VEDisplaySettings;Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;)Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_86

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_86

    .line 253
    :cond_13
    check-cast p1, Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 254
    iget v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    iget v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    if-ne v2, v3, :cond_86

    iget v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    iget v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    if-ne v2, v3, :cond_86

    iget v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    iget v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    if-ne v2, v3, :cond_86

    iget v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    iget v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    if-ne v2, v3, :cond_86

    iget v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    iget v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    if-ne v2, v3, :cond_86

    iget-wide v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    iget-wide v4, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_86

    iget v2, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    iget v3, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_86

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    iget-boolean v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    if-ne v2, v3, :cond_86

    iget v2, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    iget v3, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    .line 262
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_86

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    if-ne v2, v3, :cond_86

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-ne v2, v3, :cond_86

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 265
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    .line 266
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    .line 267
    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    iget-object p1, p1, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    if-ne p0, p1, :cond_86

    return v0

    :cond_86
    :goto_86
    return v1
.end method

.method public getBackgroundColor()J
    .registers 3

    .line 141
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    return-wide v0
.end method

.method public getCamOutSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getCanvasSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getDisplayEffect()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    return-object p0
.end method

.method public getDisplayRatio()F
    .registers 1

    .line 151
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    return p0
.end method

.method public getDisplayRatioMode()Lcom/ss/android/vesdk/VEPreviewRadio;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    return-object p0
.end method

.method public getDisplayRotation()I
    .registers 1

    .line 224
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    return p0
.end method

.method public getEffectIntensity()F
    .registers 1

    .line 208
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    return p0
.end method

.method public getEffectRotation()I
    .registers 1

    .line 216
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    return p0
.end method

.method public getFitMode()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    return-object p0
.end method

.method public getLayoutSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getRenderSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 132
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    return p0
.end method

.method public getTranslateX()I
    .registers 1

    .line 107
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    return p0
.end method

.method public getTranslateY()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    return p0
.end method

.method public hashCode()I
    .registers 18

    move-object/from16 v0, p0

    .line 273
    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-object v10, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    iget-object v11, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget-object v12, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    iget-object v13, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mCamOutSize:Lcom/ss/android/vesdk/VESize;

    iget-boolean v1, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-object v15, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    iget v0, v0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isForceAdaptSurfaceSize()Z
    .registers 1

    .line 228
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mForceAdaptSurfaceSize:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEDisplaySettings{mTranslateX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTranslateY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFitMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayRatioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mLayoutSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffect:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectIntensity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 504
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mTranslateY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mFitMode:Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    const/4 v0, -0x1

    if-nez p2, :cond_11

    move p2, v0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mEffectRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRotation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-wide v1, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mBgColor:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 511
    iget p2, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 512
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDisplaySettings;->mDisplayRatioMode:Lcom/ss/android/vesdk/VEPreviewRadio;

    if-nez p0, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
