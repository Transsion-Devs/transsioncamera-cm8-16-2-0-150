.class public Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranVectorDrawableAdapter;


# instance fields
.field private mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;->mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    return-void
.end method


# virtual methods
.method public updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z
    .registers 6

    .line 17
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubVectorDrawable;->mTranVectorDrawable:Lcom/transsion/hubsdk/graphics/TranVectorDrawable;

    if-eqz p0, :cond_9

    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/graphics/TranVectorDrawable;->updateIconColor(Landroid/graphics/drawable/VectorDrawable;IIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
