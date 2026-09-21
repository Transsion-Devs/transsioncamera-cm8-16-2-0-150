.class public Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHorizontalIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$string;->detail_guide_item_pro_parameters_me_name_text:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 30
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_detail_me_average:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_detail_me_spot:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_detail_me_center:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object v0
.end method

.method public static getTextIcon(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 16
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->detail_guide_item_auto_capture_name_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 18
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_flash_snap_v2:I

    return p0

    :cond_19
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_auto_capture_guide_text_icon:I

    return p0

    .line 19
    :cond_1c
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->detail_guide_item_window_split_name_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 20
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_dual_window_split_text_icon:I

    return p0

    .line 21
    :cond_2b
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->detail_guide_item_up_down_name_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 22
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->ic_dual_up_down_text_icon:I

    return p0

    :cond_3a
    const/4 p0, -0x1

    return p0
.end method
