.class public Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static final RANK_ACCEPTABLE:I = 0x46

.field public static final RANK_IMPL_AMBIGUOUS:I = 0x28

.field public static final RANK_NO_CAPS:I = 0x3c

.field public static final RANK_SOFTWARE:I = 0x14

.field public static final RANK_TESTED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AJMediaCodecRank"

.field private static mTestHWCodecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCodecType:Ljava/lang/String;

.field public mMediaCodecInfo:Landroid/media/MediaCodecInfo;

.field public mRank:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    return-void
.end method

.method private static getTestHWcodecs()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x28

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x63

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 39
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    if-eqz v4, :cond_1d

    return-object v4

    .line 43
    :cond_1d
    new-instance v4, Ljava/util/TreeMap;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    .line 46
    const-string v5, "OMX.qcom.video.decoder.avc"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.hevc"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.hevcswvdec"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.mpeg4"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.mpeg2"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.vp8"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.qcom.video.decoder.vp9"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.HEVC"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.MPEG2"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.MPEG4"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.VP9"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.MTK.VIDEO.DECODER.VPX"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.Nvidia.h264.decode"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.Intel.hw_vd.h264"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.Intel.VideoDecoder.AVC"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.avc.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.AVC.Decoder"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const/16 v5, 0x62

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "OMX.SEC.avcdec"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.avc.sw.dec"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.hevc.sw.dec"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.mpeg4.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.mpeg2.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.vp8.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.SEC.vp9.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.Exynos.avc.dec"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v4, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v5, "OMX.Exynos.AVC.Decoder"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.Exynos.MPEG4.Decoder"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.Exynos.MPEG2.Decoder"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.Exynos.VP8.Decoder"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.Exynos.VP9.Decoder"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.TI.DUCATI1.VIDEO.DECODER"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.rk.video_decoder.avc"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.amlogic.avc.decoder.awesome"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.brcm.video.h264.hw.decoder"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v4, "OMX.k3.video.decoder.avc"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.IMG.MSVDX.Decoder.AVC"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.avc"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.hevc"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.mpeg4"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.mpeg2"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.vp8"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.hisi.video.decoder.vp9"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.MARVELL.VIDEO.H264DECODER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    const-string v1, "OMX.sprd.soft.h264.decoder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mTestHWCodecs:Ljava/util/Map;

    return-object v0
.end method

.method public static setupRank(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 117
    :cond_4
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    .line 122
    :cond_f
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->getTestHWcodecs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_20

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2a

    :cond_20
    const/16 v0, 0x3c

    .line 127
    :try_start_22
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_2a

    if-eqz v1, :cond_2a

    const/16 v0, 0x46

    .line 136
    :catch_2a
    :cond_2a
    :goto_2a
    new-instance v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;

    invoke-direct {v1}, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;-><init>()V

    .line 137
    iput-object p0, v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    .line 138
    iput-object p1, v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mCodecType:Ljava/lang/String;

    .line 139
    iput v0, v1, Lcom/ss/android/ttve/mediacodec/AJMediaCodecRank;->mRank:I

    return-object v1
.end method
