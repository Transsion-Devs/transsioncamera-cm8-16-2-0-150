.class public Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfigExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospZenModeConfig"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfigExt;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 3

    .line 24
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method
