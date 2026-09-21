.class public Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDragItemType:Ljava/lang/String;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 1

    .line 17
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->mX:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 25
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->mY:F

    return p0
.end method

.method public setDragItemType(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->mDragItemType:Ljava/lang/String;

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->mX:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreDragEvent;->mY:F

    return-void
.end method
