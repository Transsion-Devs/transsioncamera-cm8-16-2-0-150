.class public Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEVideoEncodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

.field private mUsage:I

.field private supportEncodeMaxPixels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->supportEncodeMaxPixels:Ljava/util/Map;

    .line 1937
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    .line 1938
    new-instance p1, Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;-><init>(Lcom/ss/android/vesdk/VEVideoEncodeSettings$1;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 1939
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->initBuilderFromVEConfigCenter()V

    return-void
.end method

.method public constructor <init>(ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 4

    .line 1948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->supportEncodeMaxPixels:Ljava/util/Map;

    .line 1949
    iput p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    .line 1950
    iput-object p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 1951
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->initBuilderFromVEConfigCenter()V

    return-void
.end method

.method private adjustEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 6

    .line 2465
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->supportEncodeMaxPixels:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hw_bytevc1 objMaxPixelCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " settings.encodeStandard= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$100(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VEVideoEncodeSettings"

    invoke-static {v3, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2467
    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$100(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v2, v1, :cond_84

    if-eqz v0, :cond_84

    .line 2468
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_84

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hw_bytevc1 change encode standard outputsize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 2470
    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2469
    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    sget-object p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    :cond_84
    return-void
.end method

.method private initBuilderFromVEConfigCenter()V
    .registers 7

    .line 1955
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_compile_codec_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 1956
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->supportEncodeMaxPixels:Ljava/util/Map;

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v4, "ve_compile_hw_bytevc1_max_pixel_count"

    const v5, 0x7e9000

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "vesdk_use_bytevcremux_in_publish"

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-void
.end method

.method private overrideWithUserConfig()V
    .registers 5

    .line 2672
    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;-><init>()V

    .line 2673
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->isSupportHWEncoder:Z

    .line 2674
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    .line 2675
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->enableHwBufferEncode:Z

    .line 2678
    iget-boolean v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    if-eqz v1, :cond_4b

    .line 2679
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    .line 2680
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mProfile:I

    .line 2681
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mGop:I

    .line 2682
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$100(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mCodecType:I

    goto :goto_9f

    .line 2685
    :cond_4b
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    .line 2686
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBps:I

    .line 2687
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    .line 2688
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQPOffset:D
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mQPOffset:D

    .line 2689
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    .line 2690
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    .line 2691
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    .line 2692
    iget-object v1, v0, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    iput v2, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I

    .line 2694
    :goto_9f
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 2695
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    return-void
.end method

.method private parseExternalSettingsJsonStr(Ljava/lang/String;)V
    .registers 9

    .line 2701
    const-string v0, "VEVideoEncodeSettings"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2702
    const-string p1, "compile"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2703
    const-string v2, "bytevc_remux_enable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2704
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_25

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_25

    :cond_20
    move v6, v5

    goto :goto_26

    :catch_22
    move-exception p0

    goto/16 :goto_10f

    :cond_25
    :goto_25
    move v6, v4

    :goto_26
    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z
    invoke-static {v3, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    .line 2705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseExternalSettingsJsonStr enableByteVCRemuxVideo= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z
    invoke-static {v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " bytevcRemuxEnable= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " VEConfig_Enable= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v6, "vesdk_use_bytevcremux_in_publish"

    invoke-virtual {v2, v6, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2705
    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const-string v3, "transition_keyframe_enable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z
    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    .line 2709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseExternalSettingsJsonStr keyframe mTransitionKeyframeEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyframeEnable:Z
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2711
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableTransitionKeyframe(Z)I

    .line 2714
    :cond_91
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const-string v3, "transition_keyframe_version"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I
    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 2715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseExternalSettingsJsonStr keyframe mTransitionKeyFrameVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameVersion:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/runtime/VERuntime;->setTransitionKeyFrameVersion(I)I

    .line 2719
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const-string v3, "transition_keyframe_mode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I
    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 2720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseExternalSettingsJsonStr keyframe mTransitionKeyframeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mTransitionKeyFrameMode:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/runtime/VERuntime;->setTransitionKeyFrameMode(I)I

    .line 2723
    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->parseJsonToSetting(Lorg/json/JSONObject;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object p1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    .line 2724
    const-string p1, "watermark_compile"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2725
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->parseJsonToSetting(Lorg/json/JSONObject;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object p0

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoWatermarkCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    :try_end_10e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_10e} :catch_22

    return-void

    .line 2727
    :goto_10f
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "external json str parse error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseJsonToHwCompileSetting(Lorg/json/JSONObject;)Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2782
    const-string v2, "4k_bitrate_ratio"

    const-string v3, "2k_bitrate_ratio"

    const-string v4, "transition_bitrate_ratio"

    const-string v5, "h_fps_bitrate_ratio"

    const-string v6, "sd_bitrate_ratio"

    const-string v7, "full_hd_bitrate_ratio"

    const-string v8, "hp_bitrate_ratio"

    const-string v9, "qcom"

    const-string v10, "mtk"

    const-string v11, "hisi"

    const-string v12, "exynos"

    const-string v13, "platform"

    new-instance v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    invoke-direct {v14}, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;-><init>()V

    .line 2785
    :try_start_21
    iget v15, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_23} :catch_4e

    move-object/from16 v16, v2

    const-string v2, "bitrate"

    move-object/from16 v17, v3

    const/4 v3, 0x2

    move-object/from16 v18, v4

    const-string v4, "hw"

    if-ne v15, v3, :cond_57

    :try_start_30
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/4 v3, -0x1

    if-ne v15, v3, :cond_57

    .line 2786
    iget-object v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    move-object v15, v5

    move-object/from16 v19, v6

    :goto_4c
    int-to-long v5, v3

    goto :goto_63

    :catch_4e
    move-exception v0

    goto/16 :goto_352

    :cond_51
    move-object v15, v5

    move-object/from16 v19, v6

    iget-wide v5, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_63

    :cond_57
    move-object v15, v5

    move-object/from16 v19, v6

    .line 2787
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_4c

    :goto_63
    iput-wide v5, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    .line 2789
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2790
    invoke-static {}, Lcom/ss/android/medialib/util/VEPlatformUtils;->getPlatform()Lcom/ss/android/medialib/util/VEPlatformUtils$VEPlatform;

    move-result-object v3

    .line 2791
    sget-object v5, Lcom/ss/android/vesdk/VEVideoEncodeSettings$2;->$SwitchMap$com$ss$android$medialib$util$VEPlatformUtils$VEPlatform:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_178

    const/4 v5, 0x2

    if-eq v3, v5, :cond_129

    const/4 v5, 0x3

    if-eq v3, v5, :cond_d9

    const/4 v5, 0x4

    if-eq v3, v5, :cond_89

    goto/16 :goto_1c6

    .line 2814
    :cond_89
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2815
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2816
    iget v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c4

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_c4

    .line 2817
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_d5

    :cond_c4
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_d5
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto/16 :goto_1c6

    .line 2807
    :cond_d9
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2808
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2809
    iget v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_114

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_114

    .line 2810
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_125

    :cond_114
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_125
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto/16 :goto_1c6

    .line 2800
    :cond_129
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2801
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2802
    iget v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_164

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_164

    .line 2803
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_175

    :cond_164
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_175
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_1c6

    .line 2793
    :cond_178
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2794
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c6

    .line 2795
    iget v3, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1b3

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1b3

    .line 2796
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    goto :goto_1c4

    :cond_1b3
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    :goto_1c4
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mBitrate:J

    .line 2823
    :cond_1c6
    :goto_1c6
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_1c8
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_1c8} :catch_4e

    const-string v3, "profile"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1ef

    :try_start_1cd
    const-string v2, "unknown"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ef

    .line 2824
    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    iget-object v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v2

    goto :goto_1ff

    :cond_1ec
    iget v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mProfile:I

    goto :goto_1ff

    .line 2825
    :cond_1ef
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->valueOfString(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_1ff
    iput v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mProfile:I

    .line 2827
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-nez v2, :cond_22b

    .line 2828
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_221

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_221

    .line 2829
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mHp_bitrate_ratio:D

    goto :goto_229

    :cond_221
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_229
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mHp_bitrate_ratio:D

    .line 2832
    :cond_22b
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_253

    .line 2833
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_249

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_249

    .line 2834
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    goto :goto_251

    :cond_249
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_251
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mFullHd_bitrate_ratio:D

    .line 2837
    :cond_253
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27d

    .line 2838
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_273

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-nez v2, :cond_273

    .line 2839
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    goto :goto_27b

    :cond_273
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_27b
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mSd_bitrate_ratio:D

    .line 2842
    :cond_27d
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a5

    .line 2843
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29b

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-nez v2, :cond_29b

    .line 2844
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mH_fps_bitrate_ratio:D

    goto :goto_2a3

    :cond_29b
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_2a3
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mH_fps_bitrate_ratio:D

    .line 2847
    :cond_2a5
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2cf

    .line 2848
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2c5

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-nez v2, :cond_2c5

    .line 2849
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->transition_bitrate_ratio:D

    goto :goto_2cd

    :cond_2c5
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_2cd
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->transition_bitrate_ratio:D

    .line 2852
    :cond_2cf
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f9

    .line 2853
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2ef

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-nez v2, :cond_2ef

    .line 2854
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m2K_bitrate_ratio:D

    goto :goto_2f7

    :cond_2ef
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_2f7
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m2K_bitrate_ratio:D

    .line 2857
    :cond_2f9
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_323

    .line 2858
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_319

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-nez v2, :cond_319

    .line 2859
    iget-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m4K_bitrate_ratio:D

    goto :goto_321

    :cond_319
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    :goto_321
    iput-wide v2, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->m4K_bitrate_ratio:D

    .line 2862
    :cond_323
    iget v2, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_325
    .catch Lorg/json/JSONException; {:try_start_1cd .. :try_end_325} :catch_4e

    const-string v3, "gop"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_347

    :try_start_32a
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_347

    .line 2863
    iget-object v1, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v1

    if-eqz v1, :cond_344

    iget-object v0, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I
    invoke-static {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v0

    goto :goto_34f

    :cond_344
    iget v0, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mGop:I

    goto :goto_34f

    .line 2864
    :cond_347
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_34f
    iput v0, v14, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mGop:I
    :try_end_351
    .catch Lorg/json/JSONException; {:try_start_32a .. :try_end_351} :catch_4e

    return-object v14

    .line 2868
    :goto_352
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseJsonToHwCompileSetting : external json str parse error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEVideoEncodeSettings"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method private parseJsonToSetting(Lorg/json/JSONObject;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    .registers 13

    .line 2733
    const-string v0, "qpoffset"

    const-string v1, "unknown"

    new-instance v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    invoke-direct {v2}, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;-><init>()V

    .line 2735
    :try_start_9
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->isSupportHWEncoder:Z

    .line 2736
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->enableHwBufferEncode:Z

    .line 2739
    const-string v3, "encode_mode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2740
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_36

    iget v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I

    if-ne v4, v5, :cond_36

    .line 2741
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    goto :goto_3e

    :catch_33
    move-exception p0

    goto/16 :goto_173

    .line 2743
    :cond_36
    const-string v4, "hw"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    .line 2747
    :goto_3e
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->parseJsonToHwCompileSetting(Lorg/json/JSONObject;)Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    move-result-object v3

    iput-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mHWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;

    .line 2748
    iget-object v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$100(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v4

    iput v4, v3, Lcom/ss/android/vesdk/settings/VEVideoHWEncodeSettings;->mCodecType:I

    .line 2750
    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    sget-object v4, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mBitrateMode:I

    .line 2751
    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_5a} :catch_33

    const-string v6, "crf"

    const/4 v7, -0x1

    const-string v8, "sw"

    if-ne v4, v5, :cond_7f

    :try_start_61
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_7f

    .line 2752
    iget-object v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v4, v4, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    goto :goto_87

    :cond_78
    iget-object v4, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I
    invoke-static {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v4

    goto :goto_87

    .line 2753
    :cond_7f
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :goto_87
    iput v4, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    .line 2754
    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    const-wide/16 v9, 0x0

    iput-wide v9, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mQPOffset:D

    .line 2755
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 2759
    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mQPOffset:D

    .line 2761
    :cond_a5
    iget-object v0, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_a9} :catch_33

    const-string v4, "maxrate"

    if-ne v3, v5, :cond_cb

    :try_start_ad
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_cb

    .line 2762
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    if-eqz v3, :cond_c4

    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget-wide v3, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    goto :goto_d4

    :cond_c4
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)J

    move-result-wide v3

    goto :goto_d4

    .line 2763
    :cond_cb
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    :goto_d4
    iput-wide v3, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    .line 2764
    iget-object v0, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_da} :catch_33

    const-string v4, "preset"

    if-ne v3, v5, :cond_fc

    :try_start_de
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_fc

    .line 2765
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v3, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v3, v3, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    goto :goto_104

    :cond_f5
    iget-object v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I
    invoke-static {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2500(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v3

    goto :goto_104

    .line 2766
    :cond_fc
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :goto_104
    iput v3, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    .line 2767
    iget-object v0, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v3, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_10a
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_10a} :catch_33

    const-string v4, "profile"

    if-ne v3, v5, :cond_130

    :try_start_10e
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2768
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v1

    if-eqz v1, :cond_129

    iget-object v1, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v1, v1, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    goto :goto_140

    :cond_129
    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I
    invoke-static {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result v1

    goto :goto_140

    .line 2769
    :cond_130
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->valueOfString(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_140
    iput v1, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mProfile:I

    .line 2770
    iget-object v0, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->mUsage:I
    :try_end_146
    .catch Lorg/json/JSONException; {:try_start_10e .. :try_end_146} :catch_33

    const-string v3, "gop"

    if-ne v1, v5, :cond_168

    :try_start_14a
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_168

    .line 2771
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result p1

    if-eqz p1, :cond_161

    iget-object p0, v2, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget p0, p0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I

    goto :goto_170

    :cond_161
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I
    invoke-static {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2400(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I

    move-result p0

    goto :goto_170

    .line 2772
    :cond_168
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    :goto_170
    iput p0, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I
    :try_end_172
    .catch Lorg/json/JSONException; {:try_start_14a .. :try_end_172} :catch_33

    return-object v2

    .line 2775
    :goto_173
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseJsonToSetting : external json str parse error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEVideoEncodeSettings"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    .registers 4

    .line 2453
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->adjustEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    .line 2454
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2455
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3200(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->parseExternalSettingsJsonStr(Ljava/lang/String;)V

    goto :goto_1e

    .line 2457
    :cond_1b
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->overrideWithUserConfig()V

    .line 2459
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exportVideoEncodeSettings = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEVideoEncodeSettings"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportVideoEncodeSettings.compile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mVideoCompileEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;
    invoke-static {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3300(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    iget-object p0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    return-object p0
.end method

.method public enableReEncodeOpt(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2621
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mReEncodeOpt:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public enableRecordingMp4(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2609
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mRecordingMp4:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public opRemuxWithCopying(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2562
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mOptRemuxWithCopy:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public overrideWithCloudConfig()Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setBanExtraDataLoop(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2652
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iput-boolean p1, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->banExtraDataLoop:Z

    return-object p0
.end method

.method public setBps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2162
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 2163
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setCompileSoftInfo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2598
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mCompileSoftInfo:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setCompileType(Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2366
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iput-object p1, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->compileType:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    return-object p0
.end method

.method public setEnableAvInterLeave(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2664
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableAvInterLeave:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEnableRemuxVideo(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 1969
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 1983
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideo:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    .line 1984
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEnableRemuxVideoForByteVC(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2021
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableByteVCRemuxVideo:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEnableRemuxVideoForRotation(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 1997
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForRotation:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEnableRemuxVideoForShoot(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2009
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableRemuxVideoForShoot:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2344
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swPreset:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2355
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeProfile:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setEncodeStandard(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2399
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->encodeStandard:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setEncodeStandardMaxPixelCount(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2410
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->supportEncodeMaxPixels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setExternalSettings(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2551
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->externalSettingsJsonStr:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFitMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2442
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mFitMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$VEVideoEncodeFitMode;

    return-object p0
.end method

.method public setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2032
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 2033
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 v0, -0x1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setFps(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    if-lez p2, :cond_f

    if-ge p2, p1, :cond_f

    .line 2046
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 2047
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0

    .line 2049
    :cond_f
    iget-object p2, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->fps:I
    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    .line 2050
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    const/4 p2, -0x1

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->publishFps:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setFrameRate(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2083
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->frameRate:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2333
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->gopSize:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setHasBFrame(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2421
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->hasBFrame:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setHwBufferEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2300
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->enableHwBufferEncode:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 2

    .line 2323
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setIFrameInterval(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2093
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->iFrameInterval:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setKeyFramePoints([I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2633
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    iput-object p1, v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mKeyFramePoints:[I

    return-object p0
.end method

.method public setMVStillFramesPublishFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2062
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesPublishFps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setMVStillFramesWatermarkFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2073
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mvStillFramesWatermarkFps:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setMetaComment(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2586
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mComment:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3602(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setMetaDescription(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2574
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mDescription:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setQP(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2191
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 2192
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2240
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeMode:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1902(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setResizeX(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2252
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeX:F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F

    return-object p0
.end method

.method public setResizeY(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2264
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->resizeY:F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2102(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F

    return-object p0
.end method

.method public setResolutionAlignment(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2643
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mResolutionAlign:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$4002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setRotate(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2229
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->rotate:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2177
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 2178
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setSpeed(F)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2388
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->speed:F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2802(Lcom/ss/android/vesdk/VEVideoEncodeSettings;F)F

    return-object p0
.end method

.method public setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2286
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHWEncoder:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Z)Z

    return-object p0
.end method

.method public setSwMaxrate(J)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2377
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swMaxrate:J
    invoke-static {v0, p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$2702(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)J

    return-object p0
.end method

.method public setVideoBitrate(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 5

    .line 2107
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    .line 2108
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$2;->$SwitchMap$com$ss$android$vesdk$VEVideoEncodeSettings$ENCODE_BITRATE_MODE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 2125
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0

    .line 2130
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CompileTime BUG. Unhandled enum value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2120
    :cond_3a
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swQP:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1502(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0

    .line 2115
    :cond_40
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->swCRF:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1402(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0

    .line 2110
    :cond_46
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bps:I
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1302(Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)I

    return-object p0
.end method

.method public setVideoBitrateMode(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2149
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->bitrateMode:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1202(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    return-object p0
.end method

.method public setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2204
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2205
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->outputSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1600(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    return-object p0
.end method

.method public setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 3

    .line 2432
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # setter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->mWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$3002(Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEWatermarkParam;

    return-object p0
.end method

.method public setWatermarkVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;
    .registers 4

    .line 2217
    iget-object v0, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2218
    iget-object p1, p0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->exportVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    # getter for: Lcom/ss/android/vesdk/VEVideoEncodeSettings;->watermarkSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->access$1700(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    return-object p0
.end method
