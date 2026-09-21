.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Footer"
.end annotation


# instance fields
.field public blackDrawableId:I

.field public drawableId:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;II)V
    .registers 4

    .line 1156
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;-><init>()V

    .line 1157
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;->drawableId:I

    .line 1158
    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;->blackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa04

    return p0
.end method
