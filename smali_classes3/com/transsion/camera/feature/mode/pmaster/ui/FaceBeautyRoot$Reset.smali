.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reset"
.end annotation


# instance fields
.field public drawableId:I

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 1142
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa03

    return p0
.end method
