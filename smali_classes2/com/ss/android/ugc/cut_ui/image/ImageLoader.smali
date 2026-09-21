.class public final Lcom/ss/android/ugc/cut_ui/image/ImageLoader;
.super Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_ui/image/IImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/image/ImageLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/ugc/cut_ui/AbsServiceClient<",
        "Lcom/ss/android/ugc/cut_ui/image/IImageLoader;",
        ">;",
        "Lcom/ss/android/ugc/cut_ui/image/IImageLoader;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/image/ImageLoader$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/android/ugc/cut_ui/image/ImageLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/cut_ui/image/ImageLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;->Companion:Lcom/ss/android/ugc/cut_ui/image/ImageLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-string v0, "com.ss.android.ugc.cut_ui.image.LOADER"

    .line 32
    sget-object v1, Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;->INSTANCE:Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;

    .line 28
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V

    .line 64
    const-string p1, "cutui.ImageLoader"

    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 28
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public load(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->getInterface()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    if-nez v0, :cond_14

    const/4 p1, 0x0

    goto :goto_19

    .line 52
    :cond_14
    invoke-interface {v0, p1, p2}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;->load(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 53
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    if-nez p1, :cond_26

    .line 55
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "load skip"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public load(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;II)Z
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->getInterface()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    if-nez v1, :cond_1a

    const/4 p1, 0x0

    goto :goto_24

    :cond_1a
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 42
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;->load(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;II)Z

    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_24
    if-nez p1, :cond_31

    .line 45
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/image/ImageLoader;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "load skip"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public loadBitmap(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient;->getInterface()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;->loadBitmap(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
