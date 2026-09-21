.class public final Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoLibraryLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)V
    .registers 2

    const-string p0, "soName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
