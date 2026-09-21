.class public Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibraryReferenceNode"
.end annotation


# instance fields
.field public volatile isLoaded:Z

.field public strLibName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    .line 348
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->strLibName:Ljava/lang/String;

    .line 349
    iput-boolean v0, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    return-void
.end method
