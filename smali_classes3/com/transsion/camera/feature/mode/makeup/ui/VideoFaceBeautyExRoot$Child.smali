.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Child"
.end annotation


# instance fields
.field private final drawableId:I

.field private final featureId:I

.field public group:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

.field private final isSecondary:Z

.field private final key:Ljava/lang/String;

.field public progress:I

.field private final title:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->drawableId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->featureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->title:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V
    .registers 7

    .line 1317
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 1318
    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->featureId:I

    .line 1319
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->key:Ljava/lang/String;

    .line 1320
    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->drawableId:I

    .line 1321
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->title:Ljava/lang/String;

    .line 1322
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->isSecondary:Z

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    .line 1327
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->isSecondary:Z

    if-eqz p0, :cond_8

    const p0, 0xfa03

    return p0

    :cond_8
    const p0, 0xfa02

    return p0
.end method
