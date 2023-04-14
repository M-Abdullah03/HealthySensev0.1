import 'package:healthysense/core/app_export.dart';
import 'package:healthysense/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';

class InitialBindings extends Bindings {
  var supabaseUrl = 'https://pewhlujewksocpevjrbl.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBld2hsdWpld2tzb2NwZXZqcmJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Njk1NjQ0NTEsImV4cCI6MTk4NTE0MDQ1MX0.oUhJd8HIMJws_koLGmh3PdGif7Hi5ZBm6sDS-xFv-Y0';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
