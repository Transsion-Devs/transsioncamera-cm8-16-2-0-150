.class public abstract Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mCoordinate:Landroid/graphics/Point;

.field public mHeight:I

.field public mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

.field public mIsStartRecording:Z

.field public mSelectable:Z

.field public mShapeColor:I

.field public mValue:I

.field public mVibrate:Z

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Graduation"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIsStartRecording:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .registers 4

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->onDraw(Landroid/graphics/Canvas;F)V

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->drawIndicator(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V
    .registers 5

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mIndicator:Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;

    if-eqz v0, :cond_9

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/graduated/indicator/IIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Point;FLcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;)V

    :cond_9
    return-void
.end method

.method public offset(II)V
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->offset(II)V

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;F)V
.end method
