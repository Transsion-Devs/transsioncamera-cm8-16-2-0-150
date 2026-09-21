.class public Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/widget/ITranLockPatternViewAdapter;


# instance fields
.field private mLockPatternViewExt:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLockPatternViewExt()Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->mLockPatternViewExt:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->mLockPatternViewExt:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    .line 27
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->mLockPatternViewExt:Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    return-object p0
.end method


# virtual methods
.method public setColors(Ljava/lang/Object;III)V
    .registers 5

    .line 10
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->getLockPatternViewExt()Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;->setColors(Ljava/lang/Object;III)V

    return-void
.end method

.method public setDotSize(Ljava/lang/Object;I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->getLockPatternViewExt()Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;->setDotSize(Ljava/lang/Object;I)V

    return-void
.end method

.method public setPathWidth(Ljava/lang/Object;I)V
    .registers 3

    .line 20
    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternView;->getLockPatternViewExt()Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/internal/widget/TranAospLockPatternViewExt;->setPathWidth(Ljava/lang/Object;I)V

    return-void
.end method
