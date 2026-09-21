.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$18;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 6

    .line 322
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->vss_panel_item_none_effect:I

    sget v2, Lcom/transsion/camera/R$string;->video_sight_shock_no_effect:I

    const-string v3, "0"

    const-string v4, "key_video_frame_style"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_2_35_1:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_2_35_1:I

    const-string v3, "1"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_vegnetting:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_vegnetting:I

    const-string v3, "2"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_recording:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_recording:I

    const-string v3, "3"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_35mm_film:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_35mm_film:I

    const-string v3, "6"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_16mm_film:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_16mm_film:I

    const-string v3, "5"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_frame_8mm_film:I

    sget v2, Lcom/transsion/camera/R$string;->video_frame_item_8mm_film:I

    const-string v3, "4"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
