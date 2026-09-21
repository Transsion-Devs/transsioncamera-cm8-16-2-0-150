.class public Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private icon:I

.field private intensity:F

.field private resource:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->title:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->icon:I

    .line 16
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->resource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->title:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->icon:I

    .line 22
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->resource:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->intensity:F

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->icon:I

    return p0
.end method

.method public getIntensity()F
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->intensity:F

    return p0
.end method

.method public getResource()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->resource:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->icon:I

    return-void
.end method

.method public setIntensity(F)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->intensity:F

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->resource:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FilterItem;->title:Ljava/lang/String;

    return-void
.end method
