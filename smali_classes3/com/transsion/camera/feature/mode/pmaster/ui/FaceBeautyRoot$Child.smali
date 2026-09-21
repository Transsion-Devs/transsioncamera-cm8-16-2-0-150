.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Child"
.end annotation


# instance fields
.field private final drawableId:I

.field private final featureId:I

.field public group:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

.field private final key:Ljava/lang/String;

.field public progress:I

.field private final title:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->drawableId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->featureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->key:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->title:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;ILjava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 1109
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;-><init>()V

    .line 1110
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->featureId:I

    .line 1111
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->key:Ljava/lang/String;

    .line 1112
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->drawableId:I

    .line 1113
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa02

    return p0
.end method
