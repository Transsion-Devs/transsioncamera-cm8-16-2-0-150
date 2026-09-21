.class public Lcom/transsion/hubsdk/core/internal/policy/TranThubSystemBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/policy/ITranSystemBarUtilsAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusBarHeight(Landroid/content/Context;)I
    .registers 2

    .line 19
    invoke-static {p1}, Lcom/transsion/hubsdk/internal/policy/TranSystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
