.class Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/LaserFocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectPoint"
.end annotation


# instance fields
.field public hz:I

.field public points:Ljava/util/ArrayList;

.field public vz:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Ljava/util/ArrayList;II)V
    .registers 5

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    .line 313
    iput p3, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->hz:I

    .line 314
    iput p4, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->vz:I

    return-void
.end method
