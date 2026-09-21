.class public Lcom/bytedance/ies/cutsame/util/ContextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/app/Application;
    .registers 4

    const/4 v0, 0x0

    .line 18
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 19
    const-string v2, "currentActivityThread"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    const-string v3, "getApplication"

    .line 25
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1d} :catch_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1d} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1d} :catch_1e

    return-object v1

    :catch_1e
    move-exception v1

    goto :goto_28

    :catch_20
    move-exception v1

    goto :goto_2c

    :catch_22
    move-exception v1

    goto :goto_30

    :catch_24
    move-exception v1

    goto :goto_34

    :catch_26
    move-exception v1

    goto :goto_38

    .line 37
    :goto_28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 35
    :goto_2c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 33
    :goto_30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 31
    :goto_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 29
    :goto_38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3b
    return-object v0
.end method
