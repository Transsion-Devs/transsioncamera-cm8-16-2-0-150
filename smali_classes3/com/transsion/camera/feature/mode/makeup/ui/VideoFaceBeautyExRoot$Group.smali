.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Group"
.end annotation


# instance fields
.field public blackExpandDrawableId:I

.field public drawableId:I

.field public expandDrawableId:I

.field public key:Ljava/lang/String;

.field public progress:I

.field public selectKey:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 7

    .line 1294
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 1295
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->key:Ljava/lang/String;

    .line 1296
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->title:Ljava/lang/String;

    .line 1297
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    .line 1298
    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->expandDrawableId:I

    .line 1299
    iput p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->blackExpandDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa01

    return p0
.end method
