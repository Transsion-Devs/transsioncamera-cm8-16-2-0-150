.class public final Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ugc/cut_ui/InterfaceCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
        "Lcom/ss/android/ugc/cut_ui/image/IImageLoader;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;->INSTANCE:Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_ui/image/IImageLoader;
    .registers 2

    const-string p0, "iBinder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object p0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub;->Companion:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub$Companion;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub$Companion;->asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/image/ImageLoaderInterfaceCreator;->asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    move-result-object p0

    return-object p0
.end method
