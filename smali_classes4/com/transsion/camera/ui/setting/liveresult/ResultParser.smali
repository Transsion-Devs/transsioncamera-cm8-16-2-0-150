.class public final Lcom/transsion/camera/ui/setting/liveresult/ResultParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/transsion/camera/ui/setting/liveresult/ResultParser;

.field private static final sCaptureResultKeyMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->INSTANCE:Lcom/transsion/camera/ui/setting/liveresult/ResultParser;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->sCaptureResultKeyMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 209
    const-string p0, "NA"

    if-nez p1, :cond_5

    return-object p0

    .line 212
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1b

    return-object p0

    .line 218
    :cond_1b
    const-string p0, "ON_EXTERNAL_FLASH"

    return-object p0

    .line 217
    :cond_1e
    const-string p0, "ON_AUTO_FLASH_REDEYE"

    return-object p0

    .line 216
    :cond_21
    const-string p0, "ON_ALWAYS_FLASH"

    return-object p0

    .line 215
    :cond_24
    const-string p0, "ON_AUTO_FLASH"

    return-object p0

    .line 214
    :cond_27
    const-string p0, "ON"

    return-object p0

    .line 213
    :cond_2a
    const-string p0, "OFF"

    return-object p0
.end method

.method private final AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 224
    const-string p0, "NA"

    if-nez p1, :cond_5

    return-object p0

    .line 227
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1b

    return-object p0

    .line 233
    :cond_1b
    const-string p0, "PRECAPTURE"

    return-object p0

    .line 232
    :cond_1e
    const-string p0, "FLASH_REQUIRED"

    return-object p0

    .line 231
    :cond_21
    const-string p0, "LOCKED"

    return-object p0

    .line 230
    :cond_24
    const-string p0, "CONVERGED"

    return-object p0

    .line 229
    :cond_27
    const-string p0, "SEARCHING"

    return-object p0

    .line 228
    :cond_2a
    const-string p0, "INACTIVE"

    return-object p0
.end method

.method private final AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 177
    const-string p0, "NA"

    if-nez p1, :cond_5

    return-object p0

    .line 180
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1b

    return-object p0

    .line 186
    :cond_1b
    const-string p0, "EDOF"

    return-object p0

    .line 185
    :cond_1e
    const-string p0, "CONTINUOUS_PICTURE"

    return-object p0

    .line 184
    :cond_21
    const-string p0, "CONTINUOUS_VIDEO"

    return-object p0

    .line 183
    :cond_24
    const-string p0, "MACRO"

    return-object p0

    .line 182
    :cond_27
    const-string p0, "AUTO"

    return-object p0

    .line 181
    :cond_2a
    const-string p0, "OFF"

    return-object p0
.end method

.method private final AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2

    .line 192
    const-string p0, "NA"

    if-nez p1, :cond_5

    return-object p0

    .line 195
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_22

    return-object p0

    .line 202
    :pswitch_d
    const-string p0, "PASSIVE_UNFOCUSED"

    return-object p0

    .line 201
    :pswitch_10
    const-string p0, "NOT_FOCUSED_LOCKED"

    return-object p0

    .line 200
    :pswitch_13
    const-string p0, "FOCUSED_LOCKED"

    return-object p0

    .line 199
    :pswitch_16
    const-string p0, "ACTIVE_SCAN"

    return-object p0

    .line 198
    :pswitch_19
    const-string p0, "PASSIVE_FOCUSED"

    return-object p0

    .line 197
    :pswitch_1c
    const-string p0, "PASSIVE_SCAN"

    return-object p0

    .line 196
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

.method private final AsdResultToString([ILjava/lang/Integer;)Ljava/lang/String;
    .registers 14

    if-nez p1, :cond_5

    .line 240
    const-string p0, "NA"

    return-object p0

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v1, v3

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    const-string v4, " "

    const-string v5, "NIGHT"

    const-string v6, "HDR"

    const-string v7, "DOCUMENT"

    const/4 v8, 0x2

    const-string v9, "NORMAL"

    if-nez v1, :cond_59

    .line 244
    aget v1, p1, v2

    if-eqz v1, :cond_32

    if-eq v1, v3, :cond_4a

    if-eq v1, v8, :cond_48

    const/16 v2, 0x64

    if-eq v1, v2, :cond_46

    const/16 v2, 0x65

    if-eq v1, v2, :cond_43

    packed-switch v1, :pswitch_data_fa

    :cond_32
    move-object v2, v9

    goto :goto_4b

    .line 251
    :pswitch_34
    const-string v2, "NIGHT_HDR"

    goto :goto_4b

    .line 252
    :pswitch_37
    const-string v2, "LOWLIGHT"

    goto :goto_4b

    .line 250
    :pswitch_3a
    const-string v2, "LOWLIGHT_HDR"

    goto :goto_4b

    .line 249
    :pswitch_3d
    const-string v2, "DENOISE_OFF"

    goto :goto_4b

    .line 248
    :pswitch_40
    const-string v2, "MID_LIGHT"

    goto :goto_4b

    .line 254
    :cond_43
    const-string v2, "SUPER_RES"

    goto :goto_4b

    :cond_46
    move-object v2, v7

    goto :goto_4b

    :cond_48
    move-object v2, v6

    goto :goto_4b

    :cond_4a
    move-object v2, v5

    .line 258
    :goto_4b
    const-string v10, "Algo:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_59
    const-string v1, "\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    array-length v2, p1

    if-le v2, v3, :cond_e2

    .line 263
    aget v2, p1, v3

    const/16 v3, 0x32

    if-eq v2, v3, :cond_d2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_cf

    packed-switch v2, :pswitch_data_108

    :pswitch_6e
    move-object v5, v9

    goto/16 :goto_d4

    .line 296
    :pswitch_71
    const-string v5, "TEXT"

    goto/16 :goto_d4

    .line 295
    :pswitch_75
    const-string v5, "DXO"

    goto/16 :goto_d4

    .line 294
    :pswitch_79
    const-string v5, "HUMAN"

    goto/16 :goto_d4

    .line 293
    :pswitch_7d
    const-string v5, "BOARD"

    goto/16 :goto_d4

    .line 292
    :pswitch_81
    const-string v5, "WOOD_COLOR"

    goto/16 :goto_d4

    .line 291
    :pswitch_85
    const-string v5, "PURE_COLOR"

    goto/16 :goto_d4

    .line 290
    :pswitch_89
    const-string v5, "INDOOR"

    goto :goto_d4

    .line 289
    :pswitch_8c
    const-string v5, "PORTRAIT_LAWN"

    goto :goto_d4

    .line 288
    :pswitch_8f
    const-string v5, "QRCODE"

    goto :goto_d4

    .line 287
    :pswitch_92
    const-string v5, "LAMPLIGHT"

    goto :goto_d4

    .line 286
    :pswitch_95
    const-string v5, "OCEAN"

    goto :goto_d4

    .line 285
    :pswitch_98
    const-string v5, "LAKES"

    goto :goto_d4

    .line 284
    :pswitch_9b
    const-string v5, "FIREWORK"

    goto :goto_d4

    .line 283
    :pswitch_9e
    const-string v5, "SNOW"

    goto :goto_d4

    .line 282
    :pswitch_a1
    const-string v5, "LAND_SPACE"

    goto :goto_d4

    .line 281
    :pswitch_a4
    const-string v5, "BUILDING"

    goto :goto_d4

    :pswitch_a7
    move-object v5, v6

    goto :goto_d4

    :pswitch_a9
    move-object v5, v7

    goto :goto_d4

    .line 277
    :pswitch_ab
    const-string v5, "SUNSET"

    goto :goto_d4

    .line 276
    :pswitch_ae
    const-string v5, "PARTY"

    goto :goto_d4

    .line 275
    :pswitch_b1
    const-string v5, "LAWN"

    goto :goto_d4

    .line 274
    :pswitch_b4
    const-string v5, "BEACH"

    goto :goto_d4

    .line 273
    :pswitch_b7
    const-string v5, "PLANT"

    goto :goto_d4

    .line 272
    :pswitch_ba
    const-string v5, "STREET"

    goto :goto_d4

    .line 271
    :pswitch_bd
    const-string v5, "PET"

    goto :goto_d4

    .line 270
    :pswitch_c0
    const-string v5, "MOBILE_SHOP"

    goto :goto_d4

    .line 269
    :pswitch_c3
    const-string v5, "FOOD"

    goto :goto_d4

    .line 268
    :pswitch_c6
    const-string v5, "FLOWER"

    goto :goto_d4

    .line 267
    :pswitch_c9
    const-string v5, "BLUESKY"

    goto :goto_d4

    .line 266
    :pswitch_cc
    const-string v5, "PORTRAIT"

    goto :goto_d4

    .line 298
    :cond_cf
    const-string v5, "Flare_Radial"

    goto :goto_d4

    .line 297
    :cond_d2
    const-string v5, "Flare_Common"

    .line 302
    :goto_d4
    :pswitch_d4
    const-string v3, "Effect:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_e2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    array-length v1, p1

    if-le v1, v8, :cond_ef

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AsdTuningOrFlareResultToString([ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_fa
    .packed-switch 0x5
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a9
        :pswitch_d4
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
    .end packed-switch
.end method

.method private final AsdTuningOrFlareResultToString([ILjava/lang/Integer;)Ljava/lang/String;
    .registers 6

    .line 314
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    .line 315
    const-string p0, "NA"

    return-object p0

    .line 317
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v1, " "

    if-nez p2, :cond_11

    goto :goto_30

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x5

    if-ne p2, v2, :cond_30

    .line 319
    aget p1, p1, v0

    if-eqz p1, :cond_1f

    .line 323
    const-string p2, "HUMAN"

    goto :goto_21

    .line 321
    :cond_1f
    const-string p2, "NO"

    .line 325
    :goto_21
    const-string v0, "Human:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 327
    :cond_30
    :goto_30
    aget p1, p1, v0

    .line 328
    const-string p2, "NORMAL"

    if-eqz p1, :cond_47

    const/4 v2, 0x1

    if-eq p1, v2, :cond_45

    if-eq p1, v0, :cond_42

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3f

    goto :goto_47

    .line 331
    :cond_3f
    const-string p2, "PURE"

    goto :goto_47

    .line 330
    :cond_42
    const-string p2, "WOOD"

    goto :goto_47

    .line 329
    :cond_45
    const-string p2, "PLANT"

    .line 335
    :cond_47
    :goto_47
    const-string v0, " Tuning:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :goto_55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final StarburstengineFpointToString([F)Ljava/lang/String;
    .registers 11

    if-eqz p1, :cond_73

    .line 162
    array-length p0, p1

    const/4 v0, 0x7

    if-ge p0, v0, :cond_7

    goto :goto_73

    :cond_7
    const/4 p0, 0x0

    .line 165
    aget p0, p1, p0

    const/4 v0, 0x1

    .line 166
    aget v0, p1, v0

    const/4 v1, 0x2

    .line 167
    aget v1, p1, v1

    const/4 v2, 0x3

    .line 168
    aget v2, p1, v2

    const/4 v3, 0x4

    .line 169
    aget v3, p1, v3

    const/4 v4, 0x5

    .line 170
    aget v4, p1, v4

    const/4 v5, 0x6

    .line 171
    aget p1, p1, v5

    div-float v5, v1, v3

    sub-float v6, v4, p1

    div-float/2addr v6, v3

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MainFreq: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nSubFreq: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nMagMainFreq: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nMagSubFreq: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nAvgFIFO: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nMaxFIFO: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nMinFIFO: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nK2: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nDev: "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_73
    :goto_73
    const-string p0, "NA"

    return-object p0
.end method

.method private final createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .registers 4

    .line 18
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->sCaptureResultKeyMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.transsion.camera.adapter.platformcamera.CaptureResultKey<T of com.transsion.camera.ui.setting.liveresult.ResultParser.createStaticKey>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    return-object p0

    .line 21
    :cond_14
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 31
    :cond_6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/setting/liveresult/Result;->getPlatformCamera()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    move-result-object v5

    .line 36
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const v7, 0xf4240

    const-wide/16 v8, -0x1

    if-nez v6, :cond_28

    move-wide v10, v8

    goto :goto_2e

    .line 38
    :cond_28
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    int-to-long v12, v7

    div-long/2addr v10, v12

    :goto_2e
    if-eqz v6, :cond_4a

    const-wide/16 v12, 0x0

    .line 40
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v12, v14, v12

    if-nez v12, :cond_3b

    goto :goto_4a

    :cond_3b
    const v12, 0x3b9aca00

    int-to-long v12, v12

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    div-long/2addr v12, v14

    long-to-float v6, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v6, v12

    float-to-int v6, v6

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v6, -0x1

    .line 41
    :goto_4b
    const-string v12, " Exposure  Time: \t"

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    const-string v13, "append(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 42
    const-string v11, " ms.  1/"

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    .line 41
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-string v10, "s.\n"

    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 44
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 45
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v10

    const-string v11, " ISO: \t"

    const-string v12, "\t\t"

    const-string v14, "\n"

    if-eqz v10, :cond_e7

    .line 46
    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v10}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v6, :cond_ce

    if-eqz v10, :cond_ce

    .line 48
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/2addr v6, v10

    .line 49
    invoke-virtual {v2, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    div-int/lit8 v11, v6, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 50
    const-string v10, " Gain: \t"

    invoke-virtual {v2, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v6, v6

    const/16 v11, 0x1388

    int-to-float v11, v11

    div-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    :cond_ce
    const-string v6, " Frame Num: \t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_f5

    .line 54
    :cond_e7
    invoke-virtual {v2, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v6}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_f5
    if-eqz v5, :cond_fc

    .line 57
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v6

    goto :goto_fd

    :cond_fc
    move-object v6, v1

    :goto_fd
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_11f

    .line 58
    array-length v12, v6

    if-nez v12, :cond_106

    move v12, v10

    goto :goto_107

    :cond_106
    move v12, v11

    :goto_107
    if-nez v12, :cond_11f

    .line 59
    const-string v12, " ISZ: \t"

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 62
    :cond_11f
    const-string v6, " PreviewSize: \t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 64
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_13a

    goto :goto_140

    .line 66
    :cond_13a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v6, v7

    div-long/2addr v8, v6

    :goto_140
    const-wide v15, 0x408f400000000000L    # 1000.0

    long-to-double v6, v8

    div-double v6, v15, v6

    double-to-float v4, v6

    .line 68
    const-string v6, " Frame Duration: \t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    const-string v7, " ms.  "

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v6, " fps.\n"

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_177

    .line 71
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    goto :goto_178

    :cond_177
    move-object v4, v1

    :goto_178
    if-eqz v4, :cond_1ba

    .line 72
    array-length v6, v4

    if-nez v6, :cond_17f

    move v6, v10

    goto :goto_180

    :cond_17f
    move v6, v11

    :goto_180
    if-nez v6, :cond_1ba

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v6

    if-eqz v6, :cond_1a4

    .line 74
    const-string v6, " Tran  Luxindex: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v4, v4, v11

    neg-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1ba

    .line 76
    :cond_1a4
    const-string v6, " Tran  BV: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v4, v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 81
    :cond_1ba
    :goto_1ba
    const-string v4, "com.mediatek.3afeature.aeAverageBrightness"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v4

    .line 82
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1e2

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 83
    const-string v7, " MTK  CWV: \t\t"

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 87
    :cond_1e2
    const-string v4, "com.transsion.aflaserdist"

    .line 88
    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/high16 v7, -0x10000

    if-eqz v4, :cond_215

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 90
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 91
    const-string v9, " Laser DT: \t\t"

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 93
    invoke-static {v2, v7, v8, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)Landroid/text/SpannableStringBuilder;

    .line 97
    :cond_215
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 98
    const-string v8, " AF  Mode: \t\t"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 100
    const-string v8, " AF State: \t\t"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-direct {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AfStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    const-string v4, "com.transsion.otp_InfPos"

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v4

    .line 104
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 106
    const-string v8, "com.transsion.otp_MacroPos"

    invoke-direct {v0, v8, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v8

    .line 107
    invoke-virtual {v8, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v4, :cond_28b

    if-eqz v8, :cond_28b

    .line 109
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 110
    const-string v12, " OTP  Pos: \t\t"

    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v12, " - "

    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 113
    invoke-static {v2, v7, v9, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)Landroid/text/SpannableStringBuilder;

    .line 116
    :cond_28b
    const-string v4, "com.transsion.lensPosition"

    .line 117
    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->createStaticKey(Ljava/lang/String;Ljava/lang/Class;)Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    move-result-object v4

    .line 118
    invoke-virtual {v4, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2bc

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 119
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 120
    const-string v8, " Lens Pos: \t\t"

    invoke-virtual {v2, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 122
    invoke-static {v2, v7, v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->setForegroundColor(Landroid/text/SpannableStringBuilder;III)Landroid/text/SpannableStringBuilder;

    .line 126
    :cond_2bc
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 127
    const-string v6, " FocusDis: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 129
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 130
    const-string v6, " AE  Mode: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeModeToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 131
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 132
    const-string v6, " AE State: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-direct {v0, v4}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_30d

    .line 134
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAdrcGainValueResult(Landroid/hardware/camera2/CaptureResult;)[F

    move-result-object v4

    goto :goto_30e

    :cond_30d
    move-object v4, v1

    :goto_30e
    if-eqz v4, :cond_32e

    .line 135
    array-length v6, v4

    if-nez v6, :cond_315

    move v6, v10

    goto :goto_316

    :cond_315
    move v6, v11

    :goto_316
    if-nez v6, :cond_32e

    .line 136
    const-string v6, " adrcGainValue: \t\t"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v4, v4, v11

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_32e
    if-eqz v5, :cond_339

    .line 139
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCCTValue(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_33a

    :cond_339
    move-object v4, v1

    .line 140
    :goto_33a
    const-string v6, " CT:"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_351

    .line 142
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    goto :goto_352

    :cond_351
    move-object v4, v1

    :goto_352
    if-eqz v5, :cond_35d

    .line 143
    invoke-interface {v5}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getAsdVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_35e

    :cond_35d
    move-object v6, v1

    :goto_35e
    if-eqz v4, :cond_379

    .line 144
    array-length v7, v4

    if-nez v7, :cond_365

    move v7, v10

    goto :goto_366

    :cond_365
    move v7, v11

    :goto_366
    if-nez v7, :cond_379

    .line 145
    const-string v7, " ASDValue:"

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-direct {v0, v4, v6}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->AsdResultToString([ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_379
    if-eqz v5, :cond_380

    .line 148
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkAiShutterResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    goto :goto_381

    :cond_380
    move-object v4, v1

    :goto_381
    if-eqz v4, :cond_3a0

    .line 149
    array-length v6, v4

    if-le v6, v10, :cond_3a0

    aget v6, v4, v10

    if-eqz v6, :cond_3a0

    .line 150
    const-string v6, " MotionIntensity:"

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget v4, v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/SpannableStringBuilderExtKt;->append(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3a0
    if-eqz v5, :cond_3a6

    .line 153
    invoke-interface {v5, v3}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFlickerSensorData(Landroid/hardware/camera2/CaptureResult;)[F

    move-result-object v1

    :cond_3a6
    if-eqz v1, :cond_3b6

    .line 154
    array-length v3, v1

    if-nez v3, :cond_3ac

    goto :goto_3ad

    :cond_3ac
    move v10, v11

    :goto_3ad
    if-nez v10, :cond_3b6

    .line 155
    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->StarburstengineFpointToString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3b6
    return-object v2
.end method
