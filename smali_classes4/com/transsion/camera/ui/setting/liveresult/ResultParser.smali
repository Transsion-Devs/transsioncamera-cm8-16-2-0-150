.class abstract Lcom/transsion/camera/ui/setting/liveresult/ResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sCaptureResultKeyMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->sCaptureResultKeyMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private static AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 239
    const-string v0, "NA"

    if-nez p0, :cond_5

    return-object v0

    .line 242
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_27

    const/4 v1, 0x2

    if-eq p0, v1, :cond_24

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1b

    return-object v0

    .line 254
    :cond_1b
    const-string p0, "ON_EXTERNAL_FLASH"

    return-object p0

    .line 252
    :cond_1e
    const-string p0, "ON_AUTO_FLASH_REDEYE"

    return-object p0

    .line 250
    :cond_21
    const-string p0, "ON_ALWAYS_FLASH"

    return-object p0

    .line 248
    :cond_24
    const-string p0, "ON_AUTO_FLASH"

    return-object p0

    .line 246
    :cond_27
    const-string p0, "ON"

    return-object p0

    .line 244
    :cond_2a
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 261
    const-string v0, "NA"

    if-nez p0, :cond_5

    return-object v0

    .line 264
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_27

    const/4 v1, 0x2

    if-eq p0, v1, :cond_24

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1b

    return-object v0

    .line 276
    :cond_1b
    const-string p0, "PRECAPTURE"

    return-object p0

    .line 274
    :cond_1e
    const-string p0, "FLASH_REQUIRED"

    return-object p0

    .line 272
    :cond_21
    const-string p0, "LOCKED"

    return-object p0

    .line 270
    :cond_24
    const-string p0, "CONVERGED"

    return-object p0

    .line 268
    :cond_27
    const-string p0, "SEARCHING"

    return-object p0

    .line 266
    :cond_2a
    const-string p0, "INACTIVE"

    return-object p0
.end method

.method private static AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 192
    const-string v0, "NA"

    if-nez p0, :cond_5

    return-object v0

    .line 195
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_27

    const/4 v1, 0x2

    if-eq p0, v1, :cond_24

    const/4 v1, 0x3

    if-eq p0, v1, :cond_21

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1b

    return-object v0

    .line 207
    :cond_1b
    const-string p0, "EDOF"

    return-object p0

    .line 205
    :cond_1e
    const-string p0, "CONTINUOUS_PICTURE"

    return-object p0

    .line 203
    :cond_21
    const-string p0, "CONTINUOUS_VIDEO"

    return-object p0

    .line 201
    :cond_24
    const-string p0, "MACRO"

    return-object p0

    .line 199
    :cond_27
    const-string p0, "AUTO"

    return-object p0

    .line 197
    :cond_2a
    const-string p0, "OFF"

    return-object p0
.end method

.method private static AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2

    .line 214
    const-string v0, "NA"

    if-nez p0, :cond_5

    return-object v0

    .line 217
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_22

    return-object v0

    .line 231
    :pswitch_d
    const-string p0, "PASSIVE_UNFOCUSED"

    return-object p0

    .line 229
    :pswitch_10
    const-string p0, "NOT_FOCUSED_LOCKED"

    return-object p0

    .line 227
    :pswitch_13
    const-string p0, "FOCUSED_LOCKED"

    return-object p0

    .line 225
    :pswitch_16
    const-string p0, "ACTIVE_SCAN"

    return-object p0

    .line 223
    :pswitch_19
    const-string p0, "PASSIVE_FOCUSED"

    return-object p0

    .line 221
    :pswitch_1c
    const-string p0, "PASSIVE_SCAN"

    return-object p0

    .line 219
    :pswitch_1f
    const-string p0, "INACTIVE"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static AsdResultToString([II)Ljava/lang/String;
    .registers 13

    if-nez p0, :cond_5

    .line 284
    const-string p0, "NA"

    return-object p0

    .line 286
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    array-length v1, p0

    const-string v2, " "

    const-string v3, "NIGHT"

    const-string v4, "HDR"

    const-string v5, "DOCUMENT"

    const-string v6, "NORMAL"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lez v1, :cond_52

    const/4 v1, 0x0

    .line 288
    aget v1, p0, v1

    if-eq v1, v8, :cond_43

    if-eq v1, v7, :cond_41

    const/16 v9, 0x64

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x65

    if-eq v1, v9, :cond_3c

    packed-switch v1, :pswitch_data_ee

    move-object v9, v6

    goto :goto_44

    .line 308
    :pswitch_2d
    const-string v9, "NIGHT_HDR"

    goto :goto_44

    .line 311
    :pswitch_30
    const-string v9, "LOWLIGHT"

    goto :goto_44

    .line 305
    :pswitch_33
    const-string v9, "LOWLIGHT_HDR"

    goto :goto_44

    .line 302
    :pswitch_36
    const-string v9, "DENOISE_OFF"

    goto :goto_44

    .line 299
    :pswitch_39
    const-string v9, "MID_LIGHT"

    goto :goto_44

    .line 317
    :cond_3c
    const-string v9, "SUPER_RES"

    goto :goto_44

    :cond_3f
    move-object v9, v5

    goto :goto_44

    :cond_41
    move-object v9, v4

    goto :goto_44

    :cond_43
    move-object v9, v3

    .line 323
    :goto_44
    const-string v10, "Algo:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_52
    const-string v1, "\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    array-length v9, p0

    if-le v9, v8, :cond_db

    .line 328
    aget v8, p0, v8

    const/16 v9, 0x32

    if-eq v8, v9, :cond_cb

    const/16 v9, 0x33

    if-eq v8, v9, :cond_c8

    packed-switch v8, :pswitch_data_fc

    move-object v3, v6

    goto/16 :goto_cd

    .line 423
    :pswitch_6a
    const-string v3, "TEXT"

    goto/16 :goto_cd

    .line 420
    :pswitch_6e
    const-string v3, "DXO"

    goto/16 :goto_cd

    .line 417
    :pswitch_72
    const-string v3, "HUMAN"

    goto/16 :goto_cd

    .line 414
    :pswitch_76
    const-string v3, "BOARD"

    goto/16 :goto_cd

    .line 411
    :pswitch_7a
    const-string v3, "WOOD_COLOR"

    goto/16 :goto_cd

    .line 408
    :pswitch_7e
    const-string v3, "PURE_COLOR"

    goto/16 :goto_cd

    .line 405
    :pswitch_82
    const-string v3, "INDOOR"

    goto :goto_cd

    .line 402
    :pswitch_85
    const-string v3, "PORTRAIT_LAWN"

    goto :goto_cd

    .line 399
    :pswitch_88
    const-string v3, "QRCODE"

    goto :goto_cd

    .line 396
    :pswitch_8b
    const-string v3, "LAMPLIGHT"

    goto :goto_cd

    .line 393
    :pswitch_8e
    const-string v3, "OCEAN"

    goto :goto_cd

    .line 390
    :pswitch_91
    const-string v3, "LAKES"

    goto :goto_cd

    .line 387
    :pswitch_94
    const-string v3, "FIREWORK"

    goto :goto_cd

    .line 384
    :pswitch_97
    const-string v3, "SNOW"

    goto :goto_cd

    .line 381
    :pswitch_9a
    const-string v3, "LAND_SPACE"

    goto :goto_cd

    .line 378
    :pswitch_9d
    const-string v3, "BUILDING"

    goto :goto_cd

    :pswitch_a0
    move-object v3, v4

    goto :goto_cd

    :pswitch_a2
    move-object v3, v5

    goto :goto_cd

    .line 366
    :pswitch_a4
    const-string v3, "SUNSET"

    goto :goto_cd

    .line 363
    :pswitch_a7
    const-string v3, "PARTY"

    goto :goto_cd

    .line 360
    :pswitch_aa
    const-string v3, "LAWN"

    goto :goto_cd

    .line 357
    :pswitch_ad
    const-string v3, "BEACH"

    goto :goto_cd

    .line 354
    :pswitch_b0
    const-string v3, "PLANT"

    goto :goto_cd

    .line 351
    :pswitch_b3
    const-string v3, "STREET"

    goto :goto_cd

    .line 348
    :pswitch_b6
    const-string v3, "PET"

    goto :goto_cd

    .line 345
    :pswitch_b9
    const-string v3, "MOBILE_SHOP"

    goto :goto_cd

    .line 342
    :pswitch_bc
    const-string v3, "FOOD"

    goto :goto_cd

    .line 339
    :pswitch_bf
    const-string v3, "FLOWER"

    goto :goto_cd

    .line 336
    :pswitch_c2
    const-string v3, "BLUESKY"

    goto :goto_cd

    .line 333
    :pswitch_c5
    const-string v3, "PORTRAIT"

    goto :goto_cd

    .line 429
    :cond_c8
    const-string v3, "Flare_Radial"

    goto :goto_cd

    .line 426
    :cond_cb
    const-string v3, "Flare_Common"

    .line 435
    :goto_cd
    :pswitch_cd
    const-string v4, "Effect:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    array-length v1, p0

    if-le v1, v7, :cond_e8

    .line 440
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AsdTuningOrFlareResultToString([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_ee
    .packed-switch 0x5
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a2
        :pswitch_cd
        :pswitch_a0
        :pswitch_9d
        :pswitch_9a
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
    .end packed-switch
.end method

.method private static AsdTuningOrFlareResultToString([II)Ljava/lang/String;
    .registers 6

    .line 447
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 448
    const-string p0, "NA"

    return-object p0

    .line 450
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    .line 451
    const-string v3, " "

    if-ne p1, v2, :cond_29

    .line 452
    aget p0, p0, v1

    if-eqz p0, :cond_18

    .line 460
    const-string p1, "HUMAN"

    goto :goto_1a

    .line 457
    :cond_18
    const-string p1, "NO"

    .line 463
    :goto_1a
    const-string v1, "Human:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 465
    :cond_29
    aget p0, p0, v1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3c

    if-eq p0, v1, :cond_39

    const/4 p1, 0x3

    if-eq p0, p1, :cond_36

    .line 479
    const-string p1, "NORMAL"

    goto :goto_3e

    .line 476
    :cond_36
    const-string p1, "PURE"

    goto :goto_3e

    .line 473
    :cond_39
    const-string p1, "WOOD"

    goto :goto_3e

    .line 470
    :cond_3c
    const-string p1, "PLANT"

    .line 482
    :goto_3e
    const-string v1, " Tuning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static StarburstengineFpointToString([F)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_7b

    .line 176
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    goto :goto_7b

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MainFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n SubFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n MagMainFreq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n MagSubFreq: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n AvgFIFO: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\n MaxFIFO: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n MinFIFO: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    aget v5, p0, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "\n K2: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v1

    aget v5, p0, v2

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n Dev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v3

    aget v3, p0, v4

    sub-float/2addr v1, v3

    aget p0, p0, v2

    div-float/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 177
    :cond_7b
    :goto_7b
    const-string p0, "NA"

    return-object p0
.end method

.method private static createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .registers 4

    .line 31
    sget-object v0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->sCaptureResultKeyMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 32
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    return-object p0

    .line 34
    :cond_f
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;
    .registers 15

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    .line 47
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-wide/32 v3, 0xf4240

    const-wide/16 v5, -0x1

    if-nez v2, :cond_1e

    move-wide v7, v5

    goto :goto_23

    .line 49
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    div-long/2addr v7, v3

    :goto_23
    if-eqz v2, :cond_3e

    .line 50
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_30

    goto :goto_3e

    :cond_30
    const-wide/32 v9, 0x3b9aca00

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    div-long/2addr v9, v11

    long-to-float v2, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v2, v2

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v2, -0x1

    .line 51
    :goto_3f
    const-string v9, " Exposure  Time: \t"

    invoke-virtual {v0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    const-string v8, " ms.  1/"

    .line 52
    invoke-virtual {v7, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    const-string v7, "s.\n"

    invoke-virtual {v2, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPlatformCamera()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v2

    .line 56
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 57
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 58
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v9

    const-string v10, " ISO: \t"

    const-string v11, "\t\t"

    const-string v12, "\n"

    if-eqz v9, :cond_d3

    .line 59
    invoke-virtual {v0, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int/2addr v10, v13

    div-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 60
    const-string v9, " Gain: \t"

    invoke-virtual {v0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const v8, 0x459c4000    # 5000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 61
    const-string v7, " Frame Num: \t"

    invoke-virtual {v0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    goto :goto_de

    .line 63
    :cond_d3
    invoke-virtual {v0, v10}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 66
    :goto_de
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_fb

    .line 67
    array-length v9, v7

    if-lez v9, :cond_fb

    .line 68
    const-string v9, " ISZ: \t"

    invoke-virtual {v0, v9}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v9

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 71
    :cond_fb
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    .line 72
    const-string v7, " PreviewSize: \t"

    invoke-virtual {v0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 74
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_117

    goto :goto_11c

    .line 76
    :cond_117
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v3

    :goto_11c
    const-wide v3, 0x408f400000000000L    # 1000.0

    long-to-double v9, v5

    div-double/2addr v3, v9

    double-to-float p0, v3

    .line 78
    const-string v3, " Frame Duration: \t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    const-string v4, " ms.  "

    invoke-virtual {v3, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    .line 79
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v3, " fps.\n"

    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 81
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    if-eqz p0, :cond_180

    .line 82
    array-length v3, p0

    if-lez v3, :cond_180

    .line 83
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v3

    if-eqz v3, :cond_16d

    .line 84
    const-string v3, " Tran  Luxindex: \t\t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    aget p0, p0, v8

    neg-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    goto :goto_180

    .line 86
    :cond_16d
    const-string v3, " Tran  BV: \t\t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    aget p0, p0, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 91
    :cond_180
    :goto_180
    const-string p0, "com.mediatek.3afeature.aeAverageBrightness"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_19d

    .line 94
    const-string v4, " MTK  CWV: \t\t"

    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 97
    :cond_19d
    const-string p0, "com.transsion.aflaserdist"

    .line 98
    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/high16 v4, -0x10000

    if-eqz p0, :cond_1c5

    .line 101
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 102
    const-string v6, " Laser DT: \t\t"

    invoke-virtual {v0, v6}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 103
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 104
    invoke-static {v0, v4, v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 107
    :cond_1c5
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 108
    const-string v5, " AF  Mode: \t\t"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 109
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 110
    const-string v5, " AF State: \t\t"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 112
    const-string p0, "com.transsion.otp_InfPos"

    .line 113
    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 115
    const-string v5, "com.transsion.otp_MacroPos"

    .line 116
    invoke-static {v5, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v5

    .line 117
    invoke-virtual {v5, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz p0, :cond_235

    if-eqz v5, :cond_235

    .line 119
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 120
    const-string v7, " OTP  Pos: \t\t"

    invoke-virtual {v0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    const-string v7, " - "

    invoke-virtual {p0, v7}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 121
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 122
    invoke-static {v0, v4, v6, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 125
    :cond_235
    const-string p0, "com.transsion.lensPosition"

    .line 126
    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 127
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_25b

    .line 129
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 130
    const-string v5, " Lens Pos: \t\t"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 131
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p0

    .line 132
    invoke-static {v0, v4, v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)V

    .line 135
    :cond_25b
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 136
    const-string v3, " FocusDis: \t\t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 138
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 139
    const-string v3, " AE  Mode: \t\t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 140
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 141
    const-string v3, " AE State: \t\t"

    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 143
    const-string p0, "com.transsion.adrcGainValueResult"

    .line 144
    const-class v3, [F

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 145
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_2c8

    .line 146
    array-length v4, p0

    if-lez v4, :cond_2c8

    .line 147
    const-string v4, " adrcGainValue: \t\t"

    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v4

    aget p0, p0, v8

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 149
    :cond_2c8
    const-string p0, "com.addParameters.tranUpdateTuningCt"

    const-class v4, [I

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_2ee

    .line 151
    array-length v5, p0

    if-lez v5, :cond_2ee

    .line 152
    const-string v5, " CT:"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    aget p0, p0, v8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 154
    :cond_2ee
    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    .line 155
    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAsdVersion()I

    move-result v2

    if-eqz p0, :cond_309

    .line 157
    const-string v5, " ASDValue:"

    invoke-virtual {v0, v5}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v5

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AsdResultToString([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 160
    :cond_309
    const-string p0, "com.transsion.AisMotionResult"

    invoke-static {p0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 161
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_332

    .line 162
    array-length v2, p0

    const/4 v4, 0x1

    if-le v2, v4, :cond_332

    aget v2, p0, v4

    if-eqz v2, :cond_332

    .line 163
    const-string v2, " MotionIntensity:"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object v2

    aget p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p0, v12}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    .line 166
    :cond_332
    const-string p0, "com.transsion.flickerSensorData"

    invoke-static {p0, v3}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object p0

    .line 167
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_347

    .line 169
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->StarburstengineFpointToString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    :cond_347
    return-object v0
.end method
