.class public final Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/image/IImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

.field public static final INTERFACE_IMAGE:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.image.LOADER"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;->$$INSTANCE:Lcom/ss/android/ugc/cut_ui/image/IImageLoader$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
