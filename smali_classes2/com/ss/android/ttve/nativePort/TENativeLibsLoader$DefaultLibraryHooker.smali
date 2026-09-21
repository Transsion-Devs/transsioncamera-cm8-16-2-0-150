.class public Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryHooker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLibraryHooker"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMemHookNativeLibs([Ljava/lang/String;)V
    .registers 2

    return-void
.end method
