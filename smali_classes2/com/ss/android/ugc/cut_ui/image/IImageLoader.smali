.class public interface abstract Lcom/ss/android/ugc/cut_ui/image/IImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;,
        Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub;,
        Lcom/ss/android/ugc/cut_ui/image/IImageLoader$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

.field public static final INTERFACE_IMAGE:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.image.LOADER"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

    sput-object v0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;->Companion:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

    return-void
.end method


# virtual methods
.method public abstract load(Landroid/content/Context;Landroid/net/Uri;)Z
.end method

.method public abstract load(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;II)Z
.end method

.method public abstract loadBitmap(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
