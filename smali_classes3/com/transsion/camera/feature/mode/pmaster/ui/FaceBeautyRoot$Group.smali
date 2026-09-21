.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Group"
.end annotation


# instance fields
.field public drawableId:I

.field public expandBlackDrawableId:I

.field public expandDrawableId:I

.field public key:Ljava/lang/String;

.field public progress:I

.field public selectKey:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 7

    .line 1087
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;-><init>()V

    .line 1088
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->key:Ljava/lang/String;

    .line 1089
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->title:Ljava/lang/String;

    .line 1090
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->drawableId:I

    .line 1091
    iput p5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->expandDrawableId:I

    .line 1092
    iput p6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->expandBlackDrawableId:I

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa01

    return p0
.end method
