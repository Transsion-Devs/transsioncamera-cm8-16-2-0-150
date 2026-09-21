.class Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    sget v1, Lcom/transsion/camera/R$drawable;->street_photo_filter_1:I

    sget v2, Lcom/transsion/camera/R$string;->street_photo_style_item_no_effect:I

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    sget v1, Lcom/transsion/camera/R$drawable;->street_photo_filter_2:I

    sget v2, Lcom/transsion/camera/R$string;->street_photo_style_item_filter_sprightly:I

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    sget v1, Lcom/transsion/camera/R$drawable;->street_photo_filter_3:I

    sget v2, Lcom/transsion/camera/R$string;->street_photo_style_item_filter_retro:I

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    sget v1, Lcom/transsion/camera/R$drawable;->street_photo_filter_4:I

    sget v2, Lcom/transsion/camera/R$string;->street_photo_style_item_filter_black_white:I

    const-string v3, "3"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;

    sget v1, Lcom/transsion/camera/R$drawable;->street_photo_filter_5:I

    sget v2, Lcom/transsion/camera/R$string;->street_photo_style_item_filter_time:I

    const-string v3, "4"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleItem;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
