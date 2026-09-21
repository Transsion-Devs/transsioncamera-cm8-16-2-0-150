.class public Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private desc:I

.field private icon:I

.field private title:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->title:I

    .line 17
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->icon:I

    .line 18
    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->desc:I

    return-void
.end method


# virtual methods
.method public getDesc()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->desc:I

    return p0
.end method

.method public getIcon()I
    .registers 1

    .line 31
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->icon:I

    return p0
.end method

.method public getTitle()I
    .registers 1

    .line 22
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->title:I

    return p0
.end method

.method public setDesc(I)Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;
    .registers 2

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->desc:I

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;
    .registers 2

    .line 35
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->icon:I

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;
    .registers 2

    .line 26
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;->title:I

    return-object p0
.end method
