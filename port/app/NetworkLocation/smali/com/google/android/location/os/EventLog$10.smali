.class Lcom/google/android/location/os/EventLog$10;
.super Lcom/google/android/location/os/EventLog$Entry;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/os/EventLog;->addWifiScanResults(Lcom/google/android/location/data/WifiScan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/EventLog;

.field final synthetic val$wifiScan:Lcom/google/android/location/data/WifiScan;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLcom/google/android/location/data/WifiScan;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$10;->this$0:Lcom/google/android/location/os/EventLog;

    iput-object p5, p0, Lcom/google/android/location/os/EventLog$10;->val$wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    return-void
.end method


# virtual methods
.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/location/os/EventLog$10;->val$wifiScan:Lcom/google/android/location/data/WifiScan;

    invoke-static {p1, v0}, Lcom/google/android/location/data/WifiScan;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiScan;)V

    .line 297
    return-void
.end method
