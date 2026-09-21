.class public Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private feature:Ljava/lang/String;

.field private intensityArray:[F

.field private keyArray:[Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    const/4 p1, 0x1

    .line 40
    new-array p2, p1, [Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    .line 41
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    .line 26
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p4, p1, p2

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[F)V
    .registers 6

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->style:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    return-object p0
.end method

.method public getIntensityArray()[F
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-object p0
.end method

.method public getKeyArray()[Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getStyle()Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->style:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setFeature(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->feature:Ljava/lang/String;

    return-void
.end method

.method public setIntensityArray([F)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public setKeyArray([Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->style:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-void
.end method
