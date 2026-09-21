.class public Lcom/ss/android/ttve/editorInfo/TEEditorInfoInvoker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 13
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeInit()V
.end method

.method public static onNativeCallback_onEditorInfoFloat(Ljava/lang/String;F)V
    .registers 2

    .line 23
    invoke-static {p0, p1}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;F)V

    return-void
.end method

.method public static onNativeCallback_onEditorInfoInt(Ljava/lang/String;J)V
    .registers 3

    .line 19
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    return-void
.end method

.method public static onNativeCallback_onEditorInfoJson(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onNativeCallback_onEditorInfoMap(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 2

    .line 27
    invoke-static {p0, p1}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
