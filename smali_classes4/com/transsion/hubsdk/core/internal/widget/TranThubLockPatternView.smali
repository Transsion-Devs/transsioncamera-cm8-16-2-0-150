.class public Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;


# instance fields
.field private mLockPatternView:Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;

    invoke-direct {v0}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;->mLockPatternView:Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;

    return-void
.end method


# virtual methods
.method public setColors(Ljava/lang/Object;III)V
    .registers 5

    .line 15
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;->mLockPatternView:Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;

    if-eqz p0, :cond_7

    .line 16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;->setColors(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method public setDotSize(Ljava/lang/Object;I)V
    .registers 3

    .line 22
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;->mLockPatternView:Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;

    if-eqz p0, :cond_7

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;->setDotSize(Ljava/lang/Object;I)V

    :cond_7
    return-void
.end method

.method public setPathWidth(Ljava/lang/Object;I)V
    .registers 3

    .line 29
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/widget/TranThubLockPatternView;->mLockPatternView:Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;

    if-eqz p0, :cond_7

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/widget/TranLockPatternView;->setPathWidth(Ljava/lang/Object;I)V

    :cond_7
    return-void
.end method
