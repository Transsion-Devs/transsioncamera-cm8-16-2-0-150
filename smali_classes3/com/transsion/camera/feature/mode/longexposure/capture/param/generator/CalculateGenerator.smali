.class public Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/param/IParamGenerator;


# static fields
.field private static final BRIGHTNESS_VALUE_LIMIT:I = 0x23

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mExposureSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mExposureTime:J

.field private mIso:I

.field private mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

.field private final mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;


# direct methods
.method public static synthetic $r8$lambda$AuNP2ykwf21Hh1YOmIpktumJndk(Ljava/lang/Integer;)I
    .registers 1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$G_jh2Sk8IGndfe2S6regH5lVIlY(Ljava/lang/Integer;)Z
    .registers 2

    const/4 v0, -0x1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq v0, p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    .line 54
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getResultMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    return-void
.end method

.method private prepareSetting()Z
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_e

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    const-string v1, "key_iso"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getSetting(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 61
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_1c

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    const-string v1, "key_exposure_time"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getSetting(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 64
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public generate(Ljava/lang/String;I)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;
    .registers 11

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->prepareSetting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 70
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Setting not prepared"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_f
    const/4 v0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    if-nez p2, :cond_b1

    .line 75
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 76
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_18a

    :goto_38
    move v6, v5

    goto :goto_71

    :sswitch_3a
    const-string v6, "lightpainting"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    goto :goto_38

    :cond_43
    const/4 v6, 0x4

    goto :goto_71

    :sswitch_45
    const-string v6, "star"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_38

    :cond_4e
    const/4 v6, 0x3

    goto :goto_71

    :sswitch_50
    const-string v6, "flowingwater"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_59

    goto :goto_38

    :cond_59
    const/4 v6, 0x2

    goto :goto_71

    :sswitch_5b
    const-string/jumbo v6, "traffic"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    goto :goto_38

    :cond_65
    move v6, v0

    goto :goto_71

    :sswitch_67
    const-string v6, "stellartrack"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    goto :goto_38

    :cond_70
    move v6, v2

    :goto_71
    packed-switch v6, :pswitch_data_1a0

    goto :goto_b1

    .line 79
    :pswitch_75
    iput v5, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 80
    iput-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    goto :goto_b1

    .line 89
    :pswitch_7a
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getCurrentBv()I

    move-result v6

    const/16 v7, 0x23

    if-lt v6, v7, :cond_86

    move v6, v5

    goto :goto_8c

    :cond_86
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getIso()I

    move-result v6

    :goto_8c
    iput v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 90
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getCurrentBv()I

    move-result v6

    if-lt v6, v7, :cond_98

    move-wide v6, v3

    goto :goto_9e

    :cond_98
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getExposureTime()J

    move-result-wide v6

    :goto_9e
    iput-wide v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    goto :goto_b1

    .line 84
    :pswitch_a1
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getIso()I

    move-result v6

    iput v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 85
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getExposureTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    .line 97
    :cond_b1
    :goto_b1
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIsoSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_182

    .line 98
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c1

    goto/16 :goto_182

    .line 103
    :cond_c1
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda1;-><init>()V

    .line 104
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator$$ExternalSyntheticLambda1;-><init>()V

    .line 106
    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->isFlowingWaterMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f9

    goto :goto_13a

    .line 114
    :cond_f9
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->isTrafficOrPaintingMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 115
    iget v5, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 116
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    goto :goto_13a

    :cond_104
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_122

    .line 119
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    int-to-float v3, v0

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int v5, v3

    if-lt v5, v1, :cond_114

    .line 121
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    goto :goto_13a

    .line 123
    :cond_114
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    long-to-float v3, v3

    const/high16 v4, 0x3d800000    # 0.0625f

    :goto_119
    mul-float/2addr v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    mul-float/2addr v3, v0

    float-to-long v3, v3

    move v5, v1

    goto :goto_13a

    :cond_122
    if-ne p2, v0, :cond_136

    .line 127
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    int-to-float v3, v0

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-int v5, v3

    if-lt v5, v1, :cond_130

    .line 129
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    goto :goto_13a

    .line 131
    :cond_130
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    long-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    goto :goto_119

    .line 135
    :cond_136
    iget v5, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    .line 136
    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    .line 140
    :goto_13a
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateParam scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", frameNum: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIso: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mIso:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mExposureTime: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->mExposureTime:J

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", iso: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", exposureTime: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    invoke-direct {p0, v5, v3, v4}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;-><init>(IJ)V

    return-object p0

    .line 99
    :cond_182
    :goto_182
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "iso support is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_18a
    .sparse-switch
        -0x7e5d776a -> :sswitch_67
        -0x3f9dde03 -> :sswitch_5b
        -0x3a4e425d -> :sswitch_50
        0x360652 -> :sswitch_45
        0x533119da -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_7a
        :pswitch_75
        :pswitch_a1
        :pswitch_7a
    .end packed-switch
.end method
