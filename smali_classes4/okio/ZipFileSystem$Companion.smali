.class final Lokio/ZipFileSystem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokio/ZipFileSystem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROOT()Lokio/Path;
    .registers 1

    .line 172
    # getter for: Lokio/ZipFileSystem;->ROOT:Lokio/Path;
    invoke-static {}, Lokio/ZipFileSystem;->access$getROOT$cp()Lokio/Path;

    move-result-object p0

    return-object p0
.end method
