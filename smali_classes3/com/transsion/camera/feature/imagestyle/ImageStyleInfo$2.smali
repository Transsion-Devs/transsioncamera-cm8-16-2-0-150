.class Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_common_colorstyle:I

    goto :goto_10

    :cond_e
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_common:I

    :goto_10
    sget v2, Lcom/transsion/camera/feature/imagestyle/R$string;->image_style_item_no_effect:I

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-eqz v1, :cond_25

    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_distinct_colorstyle:I

    goto :goto_27

    :cond_25
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_distinct:I

    :goto_27
    sget v2, Lcom/transsion/camera/feature/imagestyle/R$string;->image_style_item_professional:I

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v1

    if-eqz v1, :cond_3c

    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_camon_colorstyle:I

    goto :goto_3e

    :cond_3c
    sget v1, Lcom/transsion/camera/feature/imagestyle/R$drawable;->image_style_camon:I

    :goto_3e
    sget v2, Lcom/transsion/camera/feature/imagestyle/R$string;->image_style_item_vibrant:I

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
