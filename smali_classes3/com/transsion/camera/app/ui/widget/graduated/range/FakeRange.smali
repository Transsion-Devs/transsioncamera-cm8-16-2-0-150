.class public Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/graduated/range/IRange;


# instance fields
.field private final mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    return-void
.end method


# virtual methods
.method public coordinateToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 4

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v0, -0xa

    if-le p1, v1, :cond_d

    if-gt p1, v0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public offset(II)V
    .registers 6

    .line 32
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetX:I

    if-nez v0, :cond_c

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    if-eqz v1, :cond_9

    goto :goto_c

    :cond_9
    move v0, p1

    move v1, p2

    goto :goto_12

    :cond_c
    :goto_c
    sub-int v0, p1, v0

    .line 34
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    sub-int v1, p2, v1

    .line 36
    :goto_12
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->offset(II)V

    .line 37
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetX:I

    .line 38
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mOffsetY:I

    return-void
.end method

.method public valueToGraduation(I)Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/range/FakeRange;->mGraduation:Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mValue:I

    if-ne v0, p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
