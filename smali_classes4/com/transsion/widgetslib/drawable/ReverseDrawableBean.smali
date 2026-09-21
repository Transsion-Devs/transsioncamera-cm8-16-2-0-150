.class public Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

.field private mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-object p0
.end method

.method public getDisabledDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-object p0
.end method

.method public getNormalDrawable()Lcom/transsion/widgetslib/drawable/ReversibleDrawable;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-object p0
.end method

.method public getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setCheckedDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mCheckedDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method public setDisabledDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mDisabledDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method public setNormalDrawable(Lcom/transsion/widgetslib/drawable/ReversibleDrawable;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mNormalDrawable:Lcom/transsion/widgetslib/drawable/ReversibleDrawable;

    return-void
.end method

.method public setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/transsion/widgetslib/drawable/ReverseDrawableBean;->mStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method
