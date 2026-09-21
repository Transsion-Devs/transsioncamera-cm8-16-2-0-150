.class Lcom/transsion/widgetslib/view/LoadingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/LoadingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/LoadingView;

.field final synthetic val$darkMode:Z


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/LoadingView;Z)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x0

    # setter for: Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 71
    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    const-string v3, "loading_medium.json"

    if-eqz v2, :cond_7a

    .line 73
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_small_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-gt v0, v4, :cond_3f

    .line 75
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "loading_small_colorfull.json"

    :goto_2c
    move-object v3, v0

    goto :goto_38

    .line 76
    :cond_2e
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_35

    const-string v0, "loading_small_night.json"

    goto :goto_2c

    :cond_35
    const-string v0, "loading_small.json"

    goto :goto_2c

    .line 77
    :goto_38
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x2

    # setter for: Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    goto :goto_7a

    .line 78
    :cond_3f
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt v0, v2, :cond_5e

    .line 80
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v3, "loading_medium_colorfull.json"

    goto :goto_58

    .line 81
    :cond_52
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_58

    const-string v3, "loading_medium_night.json"

    .line 82
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # setter for: Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    goto :goto_7a

    .line 85
    :cond_5e
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mShowOnColorFull:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "loading_large_colorfull.json"

    :goto_68
    move-object v3, v0

    goto :goto_74

    .line 86
    :cond_6a
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_71

    const-string v0, "loading_large_night.json"

    goto :goto_68

    :cond_71
    const-string v0, "loading_large.json"

    goto :goto_68

    .line 87
    :goto_74
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x1

    # setter for: Lcom/transsion/widgetslib/view/LoadingView;->mDimenMode:I
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    .line 93
    :try_start_7b
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;
    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$200(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mIsAutoAnim:Z
    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$300(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 97
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    # getter for: Lcom/transsion/widgetslib/view/LoadingView;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/LoadingView;->access$200(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a3} :catch_a6
    .catchall {:try_start_7b .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception p0

    goto :goto_c0

    :catch_a6
    move-exception p0

    goto :goto_b3

    :cond_a8
    :goto_a8
    if-eqz v0, :cond_bf

    .line 104
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    return-void

    :catch_ae
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_bf

    .line 100
    :goto_b3
    :try_start_b3
    const-string v1, "LoadingView"

    const-string v2, "open asset file error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_a4

    if-eqz v0, :cond_bf

    .line 104
    :try_start_bc
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_ae

    :cond_bf
    :goto_bf
    return-void

    :goto_c0
    if-eqz v0, :cond_ca

    :try_start_c2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :cond_ca
    :goto_ca
    throw p0
.end method
