.class public final Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Stub$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Lcom/ss/android/ugc/cut_ui/image/IImageLoader;
    .registers 2

    .line 28
    instance-of p0, p1, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    if-eqz p0, :cond_7

    .line 29
    check-cast p1, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
