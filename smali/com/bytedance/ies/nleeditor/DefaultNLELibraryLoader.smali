.class public final Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nleeditor/INLELibraryLoader;


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;

    invoke-direct {v0}, Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;->INSTANCE:Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadNativeLibs(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_24

    .line 22
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 23
    const-string v0, "load library : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_9

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method
