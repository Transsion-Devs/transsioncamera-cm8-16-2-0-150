.class public Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/Item;
.source "SourceFile"


# instance fields
.field public drawableId:I

.field public featureId:I

.field public key:Ljava/lang/String;

.field public progress:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;-><init>()V

    .line 11
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->featureId:I

    .line 12
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->key:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->drawableId:I

    .line 14
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/VideoFaceSkinColorItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 1

    const p0, 0xfa03

    return p0
.end method
