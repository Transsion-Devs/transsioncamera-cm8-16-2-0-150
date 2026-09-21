.class Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockInfo$16;
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

    .line 298
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->vss_panel_item_none_effect:I

    sget v2, Lcom/transsion/camera/R$string;->video_sight_shock_no_effect:I

    const-string v3, "0"

    const-string v4, "key_video_effect_style"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_shutters:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_shutters:I

    const-string v3, "1"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_old_film:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_old_film:I

    const-string v3, "3"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_rain_drop:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_rain_drop:I

    const-string v3, "5"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_snow_fall:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_snow_fall:I

    const-string v3, "6"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_flare:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_flare:I

    const-string v3, "2"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;

    sget v1, Lcom/transsion/camera/R$drawable;->lc_video_effect_scanline:I

    sget v2, Lcom/transsion/camera/R$string;->video_effect_item_scanline:I

    const-string v3, "4"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/transsion/camera/ui/setting/videosightshock/bean/VidSigShockItemBean;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
