.class public Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BV_LIMIT_VALUE:I = 0x23

.field private static final STATUS_STABLE:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VALUE_PIC_TRACE_WATER_MODE:I = 0x15


# instance fields
.field private final mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

.field private final mParamGenerator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/IParamGenerator;

.field private final mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

.field private final mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    .line 53
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    invoke-direct {v0, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;-><init>(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    .line 54
    new-instance p2, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/generator/CalculateGenerator;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mParamGenerator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/IParamGenerator;

    .line 55
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getResultMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    return-void
.end method

.method private getCaptureState(Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)Ljava/lang/String;
    .registers 2

    .line 121
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator$1;->$SwitchMap$com$transsion$camera$feature$mode$longexposure$capture$data$CaptureType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_14

    const/4 p1, 0x2

    if-eq p0, p1, :cond_11

    .line 127
    const-string p0, "continue"

    return-object p0

    .line 125
    :cond_11
    const-string p0, "stop"

    return-object p0

    .line 123
    :cond_14
    const-string p0, "cancel"

    return-object p0
.end method


# virtual methods
.method public captureReady()V
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    if-eqz p0, :cond_7

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingForCaptureReady()V

    :cond_7
    return-void
.end method

.method public configParam(Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 61
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_fa

    .line 64
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v9}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getTuningScene()I

    move-result v9

    .line 65
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->getOriginalSceneAttribute()Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getTripod()Ljava/lang/String;

    move-result-object v11

    .line 67
    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getAppName()Ljava/lang/String;

    move-result-object v12

    .line 68
    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getCaptureScene()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-virtual {v10}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->getCaptureScene()Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v15

    const-string/jumbo v4, "traffic"

    const-string v7, "lightpainting"

    const-string v8, "flowingwater"

    sparse-switch v15, :sswitch_data_130

    :goto_42
    const/16 v16, -0x1

    goto :goto_7a

    :sswitch_45
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4c

    goto :goto_42

    :cond_4c
    const/4 v15, 0x4

    goto :goto_58

    :sswitch_4e
    const-string v15, "star"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_57

    goto :goto_42

    :cond_57
    const/4 v15, 0x3

    :goto_58
    move/from16 v16, v15

    goto :goto_7a

    :sswitch_5b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_62

    goto :goto_42

    :cond_62
    const/16 v16, 0x2

    goto :goto_7a

    :sswitch_65
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6c

    goto :goto_42

    :cond_6c
    const/16 v16, 0x1

    goto :goto_7a

    :sswitch_6f
    const-string v15, "stellartrack"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_78

    goto :goto_42

    :cond_78
    const/16 v16, 0x0

    :goto_7a
    const-string v17, "off"

    const-string v15, "on"

    packed-switch v16, :pswitch_data_146

    goto/16 :goto_df

    .line 84
    :pswitch_83
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getCurrentStableState()I

    move-result v4

    const/16 v10, 0x15

    if-eq v9, v10, :cond_93

    if-nez v9, :cond_90

    goto :goto_93

    :cond_90
    move-object v13, v7

    :goto_91
    const/4 v10, 0x2

    goto :goto_95

    :cond_93
    :goto_93
    move-object v13, v8

    goto :goto_91

    :goto_95
    if-ne v4, v10, :cond_99

    move-object v11, v15

    goto :goto_9b

    :cond_99
    move-object/from16 v11, v17

    .line 88
    :goto_9b
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getCurrentBv()I

    move-result v4

    const/16 v10, 0x23

    if-lt v4, v10, :cond_a7

    :goto_a5
    move-object v12, v8

    goto :goto_df

    :cond_a7
    move-object v12, v7

    goto :goto_df

    :pswitch_a9
    const/4 v10, 0x2

    .line 72
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getCurrentStableState()I

    move-result v4

    if-ne v4, v10, :cond_b3

    goto :goto_de

    :cond_b3
    move-object/from16 v11, v17

    goto :goto_df

    .line 76
    :pswitch_b6
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mLongExposureCapture:Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->getCurrentStableState()I

    move-result v7

    const/16 v10, 0x15

    if-eq v9, v10, :cond_c6

    if-nez v9, :cond_c3

    goto :goto_c6

    :cond_c3
    move-object v13, v4

    :goto_c4
    const/4 v10, 0x2

    goto :goto_c8

    :cond_c6
    :goto_c6
    move-object v13, v8

    goto :goto_c4

    :goto_c8
    if-ne v7, v10, :cond_cc

    move-object v11, v15

    goto :goto_ce

    :cond_cc
    move-object/from16 v11, v17

    .line 80
    :goto_ce
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;->getCurrentBv()I

    move-result v7

    const/16 v10, 0x23

    if-lt v7, v10, :cond_d9

    goto :goto_a5

    :cond_d9
    move-object v12, v4

    goto :goto_df

    .line 94
    :pswitch_db
    invoke-virtual {v10, v15}, Lcom/transsion/camera/feature/mode/longexposure/capture/data/SceneAttribute;->setOriginalTripod(Ljava/lang/String;)V

    :goto_de
    move-object v11, v15

    .line 98
    :goto_df
    sget-object v4, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "configParam frameNum 0 tuningScene: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    invoke-virtual {v4, v13, v12, v11, v14}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingForFirstCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_fa
    sget-object v4, Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;->NORMAL:Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;

    if-ne v2, v4, :cond_11a

    .line 104
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mParamGenerator:Lcom/transsion/camera/feature/mode/longexposure/capture/param/IParamGenerator;

    invoke-interface {v4, v1, v3}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/IParamGenerator;->generate(Ljava/lang/String;I)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    move-result-object v4

    if-eqz v4, :cond_11a

    .line 106
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->getIso()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;->getExposureTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 110
    :cond_11a
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->mSettingHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;

    .line 111
    invoke-direct {v0, v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->getCaptureState(Lcom/transsion/camera/feature/mode/longexposure/capture/data/CaptureType;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v5

    if-nez v3, :cond_129

    const/4 v5, 0x1

    :goto_127
    move-object v3, v6

    goto :goto_12b

    :cond_129
    const/4 v5, 0x0

    goto :goto_127

    .line 110
    :goto_12b
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/longexposure/helper/SettingHelper;->updateSettingForCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_130
    .sparse-switch
        -0x7e5d776a -> :sswitch_6f
        -0x3f9dde03 -> :sswitch_65
        -0x3a4e425d -> :sswitch_5b
        0x360652 -> :sswitch_4e
        0x533119da -> :sswitch_45
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_db
        :pswitch_b6
        :pswitch_a9
        :pswitch_db
        :pswitch_83
    .end packed-switch
.end method
