.class public final Lcom/cutsame/solution/init/CutSameSolution$registerLog$2;
.super Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cutsame/solution/init/CutSameSolution;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/init/CutSameSolution$registerLog$2$WhenMappings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(Lcom/bytedance/ies/nle/editor_jni/LogLevel;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, -0x1

    goto :goto_c

    .line 1
    :cond_4
    sget-object p0, Lcom/cutsame/solution/init/CutSameSolution$registerLog$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_c
    const/4 p1, 0x1

    const-string v0, "NLE"

    if-eq p0, p1, :cond_45

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_35

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2d

    const/4 p1, 0x5

    if-eq p0, p1, :cond_25

    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_25
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_2d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_35
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_45
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ugc/cut_log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
