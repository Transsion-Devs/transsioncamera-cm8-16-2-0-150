.class public final Lcom/gallery20/base/base_ui/UIExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static toastRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1YPUDHTp2VxOs8uTt5N8HvI4L_A(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showLongToast$lambda$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B68Ag46gbkGIAykzJqccmGodwfo(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showLongToastGlobal$lambda$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SP2cl5_e-JXRgOsRn3ptmuMTiEk(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showShortToast$lambda$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cWn7p2nMFjzynidaelp27t2Yhko(I)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showShortToastGlobal$lambda$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTbM8AAR8euXK3bW6g1KAIwK_5o(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showLongToast$lambda$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r-jwyPvcGvap56WlSiKCurvk_-s(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->showShortToast$lambda$3(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gallery20/base/base_ui/UIExtKt;->toastRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final getDp(F)F
    .registers 2

    .line 60
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getResContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    return v0
.end method

.method public static final getDp(I)I
    .registers 1

    int-to-float p0, p0

    .line 63
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->getDp(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final getScreenWidth()I
    .registers 3

    .line 73
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static final getSp(F)F
    .registers 3

    .line 66
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getResContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final getSp(I)I
    .registers 1

    int-to-float p0, p0

    .line 69
    invoke-static {p0}, Lcom/gallery20/base/base_ui/UIExtKt;->getSp(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static final showLongToast(I)V
    .registers 2

    .line 23
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final showLongToast(Ljava/lang/String;)V
    .registers 2

    const-string v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showLongToast$lambda$5(I)V
    .registers 3

    .line 24
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_e
    return-void
.end method

.method private static final showLongToast$lambda$7(Ljava/lang/String;)V
    .registers 3

    const-string v0, "$str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_13
    return-void
.end method

.method public static final showLongToastGlobal(I)V
    .registers 2

    .line 33
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showLongToastGlobal$lambda$8(I)V
    .registers 4

    .line 34
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 35
    :cond_7
    sget-object v1, Lcom/gallery20/base/base_ui/UIExtKt;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    const/4 v2, 0x1

    if-nez v1, :cond_1d

    .line 37
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gallery20/base/base_ui/UIExtKt;->toastRef:Ljava/lang/ref/WeakReference;

    .line 40
    :cond_1d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(I)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 43
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final showShortToast(I)V
    .registers 2

    .line 15
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final showShortToast(Ljava/lang/String;)V
    .registers 2

    const-string v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showShortToast$lambda$1(I)V
    .registers 3

    .line 16
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_e
    return-void
.end method

.method private static final showShortToast$lambda$3(Ljava/lang/String;)V
    .registers 3

    const-string v0, "$str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_13
    return-void
.end method

.method public static final showShortToastGlobal(I)V
    .registers 2

    .line 46
    new-instance v0, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gallery20/base/base_ui/UIExtKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lcom/gallery20/base/CommonExtKt;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showShortToastGlobal$lambda$9(I)V
    .registers 4

    .line 47
    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 48
    :cond_7
    sget-object v1, Lcom/gallery20/base/base_ui/UIExtKt;->toastRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 50
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gallery20/base/base_ui/UIExtKt;->toastRef:Ljava/lang/ref/WeakReference;

    .line 53
    :cond_1d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setText(I)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 56
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
