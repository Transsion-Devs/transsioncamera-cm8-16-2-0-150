.class public Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mFilterIconId:I

.field public final mFilterNameId:I

.field public final mImageStyleValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterIconId:I

    .line 10
    iput p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mFilterNameId:I

    .line 11
    iput-object p3, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;->mImageStyleValue:Ljava/lang/String;

    return-void
.end method
