.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Singleton"
.end annotation


# static fields
.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 813
    new-instance v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cleanService()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 810
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    return-void
.end method

.method protected static getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 805
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    return-object v0
.end method
