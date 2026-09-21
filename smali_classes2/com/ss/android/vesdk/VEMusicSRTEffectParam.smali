.class public Lcom/ss/android/vesdk/VEMusicSRTEffectParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;,
        Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentProgressInvoker2;,
        Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;
    }
.end annotation


# instance fields
.field private mAddMask:Z

.field private mEffectResourcePath:Ljava/lang/String;

.field private mFontFaceIndex:I

.field private mFontTTFPath:Ljava/lang/String;

.field public mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

.field private mMaskColor:I

.field private mParamUpdated:Z

.field private mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    .line 105
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mAddMask:Z

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    .line 108
    iput v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mMaskColor:I

    return-void
.end method

.method public constructor <init>([Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;Ljava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;)V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mAddMask:Z

    const/high16 v0, 0x4d000000    # 1.34217728E8f

    .line 108
    iput v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mMaskColor:I

    .line 124
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    .line 125
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    .line 127
    iput p4, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    .line 128
    iput-object p5, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method

.method private convertDataToUnicode32(Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;)[I
    .registers 6

    .line 174
    iget-object p0, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mData:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    add-int/lit8 v0, p0, 0x3

    .line 175
    new-array v0, v0, [I

    .line 176
    iget v2, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mIndex:I

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 177
    iget v3, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mStartTime:I

    aput v3, v0, v2

    const/4 v2, 0x2

    .line 178
    iget v3, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mEndTime:I

    aput v3, v0, v2

    :goto_1d
    if-ge v1, p0, :cond_2c

    add-int/lit8 v2, v1, 0x3

    .line 180
    iget-object v3, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    return-object v0
.end method

.method private getParamUpdated()Z
    .registers 3

    .line 291
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 292
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method


# virtual methods
.method public generateBitmap(Ljava/lang/String;IIIFIII)Lcom/ss/android/vesdk/VEMusicBitmapParam;
    .registers 19

    .line 248
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    if-eqz p0, :cond_1b

    instance-of v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentProgressInvoker2;

    if-eqz v0, :cond_1b

    .line 249
    move-object v1, p0

    check-cast v1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentProgressInvoker2;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentProgressInvoker2;->generateBitmap(Ljava/lang/String;IIIFIII)Lcom/ss/android/vesdk/VEMusicBitmapParam;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateBitmapUnicode([IIIIFIII)Lcom/ss/android/vesdk/VEMusicBitmapParam;
    .registers 12

    if-eqz p1, :cond_13

    .line 270
    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_13

    :cond_6
    move-object v0, p1

    .line 274
    new-instance p1, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([III)V

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->generateBitmap(Ljava/lang/String;IIIFIII)Lcom/ss/android/vesdk/VEMusicBitmapParam;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAddMask()Z
    .registers 1

    .line 206
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mAddMask:Z

    return p0
.end method

.method public getEffectResPath()Ljava/lang/String;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFontFaceIndex()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    return p0
.end method

.method public getFontTTFPath()Ljava/lang/String;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMaskColor()I
    .registers 1

    .line 210
    iget p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mMaskColor:I

    return p0
.end method

.method public getMusicProgress()F
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    if-eqz p0, :cond_9

    .line 227
    invoke-interface {p0}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;->getMusicCurrentProgress()F

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getSrtData()[[I
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    array-length v0, v0

    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 191
    :goto_6
    iget-object v2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 192
    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->convertDataToUnicode32(Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;)[I

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public setAddMask(Z)V
    .registers 2

    .line 156
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mAddMask:Z

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method

.method public setMaskColor(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mMaskColor:I

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method

.method public updateEffectResPath([Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;Ljava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;)V
    .registers 6

    .line 143
    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    .line 144
    iput-object p3, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    .line 147
    iput-object p5, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method
